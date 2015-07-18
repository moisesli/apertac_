json.array!(@documentos) do |documento|
  json.extract! documento, :id, :titulo, :descripcion, :contenido, :tipo_extension, :tipo_documento, :visible, :archivo1, :archivo2, :archivo3, :archivo4, :archivo5, :imagen1, :imagen2, :imagen3, :imagen4, :imagen5
  json.url documento_url(documento, format: :json)
end
