json.array!(@webamigas) do |webamiga|
  json.extract! webamiga, :id, :titulo, :descripcion, :url, :logo, :contenido, :imagen1, :imagen2, :visible
  json.url webamiga_url(webamiga, format: :json)
end
