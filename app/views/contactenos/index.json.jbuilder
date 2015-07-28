json.array!(@contactenos) do |contacto|
  json.extract! contacto, :id, :asunto, :tipo, :nombre, :email, :contenido, :adjunto1, :adjunto2, :adjunto3
  json.url contacto_url(contacto, format: :json)
end
