-- Filtre Lua pour convertir ::: {.correction} en <details>...</details>
function Div(el)
  if el.classes:includes("correction") then
      return {
        pandoc.RawBlock("html", "<details>"),
        pandoc.RawBlock("html", "<summary>Correction</summary>"),
        pandoc.Div(el.content),
        pandoc.RawBlock("html", "</details>")
      }
  end
  return el
end
