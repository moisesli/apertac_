json.array!(@noticias) do |noticia|
  json.extract! noticia, :id, :titulo, :resumen, :contenido, :autor, :img_noticia, :visible
  json.url noticia_url(noticia, format: :json)
end
