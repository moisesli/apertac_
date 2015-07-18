json.array!(@convocatorias) do |convocatoria|
  json.extract! convocatoria, :id, :titulo, :descripcion, :contenido, :visible, :imagen1, :imagen2, :imagen3, :imagen4
  json.url convocatoria_url(convocatoria, format: :json)
end
