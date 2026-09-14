-- exo.lua
-- Filtre pandoc pour la conversion des td (.tex -> .md)
-- pandoc ton_fichier.tex -o ton_fichier.md --lua-filter=exo.lua

-- à modifier selon le chapitrea
local chapter_prefix = "02"

------------------------------------------------------------
-- Création d'un slug à partir d'un label
------------------------------------------------------------

-- exercice sans label #exr-0001 etc.
local exo_counter = 0

local function slugify(label)
	label = label:lower()

	local accents = {
		["à"] = "a",
		["â"] = "a",
		["ä"] = "a",
		["é"] = "e",
		["è"] = "e",
		["ê"] = "e",
		["ë"] = "e",
		["î"] = "i",
		["ï"] = "i",
		["ô"] = "o",
		["ö"] = "o",
		["ù"] = "u",
		["û"] = "u",
		["ü"] = "u",
		["ç"] = "c",
	}

	for from, to in pairs(accents) do
		label = label:gsub(from, to)
	end

	-- Tout ce qui n'est pas alphanumérique devient "-"
	label = label:gsub("[^a-z0-9]+", "-")

	-- Supprimer les "-" au début et à la fin
	label = label:gsub("^-+", "")
	label = label:gsub("-+$", "")

	-- Remplacer exo- par 01-
	label = label:gsub("exo%-%d+%-%w+%-", chapter_prefix .. "-")
	return label
end

------------------------------------------------------------
-- Traitement récursif des listes
------------------------------------------------------------

local function process_blocks(blocks, depth)
	for _, block in ipairs(blocks) do
		if block.t == "OrderedList" then
			-- Niveau 2 : a, b, c
			if depth == 2 then
				block.listAttributes.style = "LowerAlpha"
			end

			-- Traiter les listes imbriquées
			for _, item in ipairs(block.content) do
				process_blocks(item, depth + 1)
			end
		elseif block.t == "Div" then
			process_blocks(block.content, depth)
		end
	end
end

------------------------------------------------------------
-- Transformation des exercices
------------------------------------------------------------

function Div(el)
	local is_exo = el.classes:includes("exo")
	local is_exostar = el.classes:includes("exostar")

	-- Ignorer les autres Div
	if not is_exo and not is_exostar then
		return nil
	end

	----------------------------------------------------------
	-- Chercher le label
	----------------------------------------------------------

	local id = nil
	for _, block in ipairs(el.content) do
		if block.t == "Para" or block.t == "Plain" then
			for _, inline in ipairs(block.content) do
				if inline.t == "Span" then
					local label = inline.attributes["label"]
					if label ~= nil and label ~= "" then
						label = label:gsub("exo%-%d+%-%w+%-", chapter_prefix .. "-")
						id = "exr-" .. slugify(label)
					end
				end
			end
		end
	end

	if id == nil then
		exo_counter = exo_counter + 1
		id = "exr-" .. chapter_prefix .. "-" .. string.format("%04d", exo_counter)
	end

	----------------------------------------------------------
	-- Supprimer les \label{...}
	----------------------------------------------------------

	el.content = pandoc.walk_block(el, {

		Span = function(span)
			if span.attributes["label"] then
				return {}
			end

			return nil
		end,
	}).content

	----------------------------------------------------------
	-- Transformer les listes
	----------------------------------------------------------

	process_blocks(el.content, 1)

	----------------------------------------------------------
	-- Ajouter le titre pour exostar
	----------------------------------------------------------

	if is_exostar then
		table.insert(el.content, 1, pandoc.Header(2, { pandoc.Math("InlineMath", "\\star") }))
	end

	----------------------------------------------------------
	-- Créer le Div Quarto
	----------------------------------------------------------

	return pandoc.Div(el.content, pandoc.Attr(id))
end
