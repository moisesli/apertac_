json.array!(@directorios) do |directorio|
  json.extract! directorio, :id, :nombre_empresa, :nombre_responsable, :numero1, :numero2, :ruc, :dni, :descripcion, :contenido, :imagen1, :imagen2, :imagen3, :imagen4
  json.url directorio_url(directorio, format: :json)
end
