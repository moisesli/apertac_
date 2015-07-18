json.array!(@anuncios) do |anuncio|
  json.extract! anuncio, :id, :titulo, :imagen, :descripcion, :contenido, :imagen1, :imagen2, :imagen3, :imagen4, :imagen5, :visible, :tipo
  json.url anuncio_url(anuncio, format: :json)
end
