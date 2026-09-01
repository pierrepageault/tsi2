# 1. Dossier contenant les figures TikZ
TIKZ_DIR = tex

# 2. Dossier de sortie des fichiers SVG
SVG_DIR = svg

# 3. Lister tous les fichiers .tex dans le dossier source
SRCS = $(wildcard $(TIKZ_DIR)/*.tex)

# 4. Déduire les fichiers .svg cibles attendus dans le dossier svg
SVGS = $(patsubst $(TIKZ_DIR)/%.tex,$(SVG_DIR)/%.svg,$(SRCS))

# Cible par défaut
all: $(SVGS)

# 5. Règle de production globale (Tex -> SVG)
$(SVG_DIR)/%.svg: $(TIKZ_DIR)/%.tex
	@echo "[Make] Traitement de $<..."

	@# Créer le dossier de sortie si nécessaire
	@mkdir -p $(SVG_DIR)

	@# Étape A : Compilation LaTeX dans le dossier tex
	latex -interaction=batchmode -output-directory=$(TIKZ_DIR) $<

	@# Étape B : Conversion en SVG
	dvisvgm --no-fonts $(TIKZ_DIR)/$*.dvi -o $@

	@# Étape C : Nettoyage des fichiers intermédiaires
	rm -f $(TIKZ_DIR)/$*.dvi $(TIKZ_DIR)/$*.aux $(TIKZ_DIR)/$*.log $(TIKZ_DIR)/$*.pdf $(TIKZ_DIR)/$*.fdb_latexmk $(TIKZ_DIR)/$*.fls

# Nettoyage complet
clean:
	@echo "[Make] Suppression des fichiers SVG générés..."
	rm -f $(SVGS)

.PHONY: all clean
