-- Filtre Lua pour convertir ::: {.details} en <details>...</details>
function Div(el)
  if el.classes:includes("details") then
      return {
        pandoc.RawBlock("html", "<details>"),
        pandoc.Div(el.content),
        pandoc.RawBlock("html", "</details>")
      }
  end
  return el
end
