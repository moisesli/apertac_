json.array!(@presidentes) do |presindente|
  json.extract! presindente, :id, :nombre, :apellido, :dni, :telefono1, :telefono2, :ruc, :email, :descripcion, :contenido, :foto, :imagen1, :imagen2, :imagen3, :imagen4
  json.url presindente_url(presindente, format: :json)
end
