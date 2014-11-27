json.array!(@mensajes) do |mensaje|
  json.extract! mensaje, :id, :fecha_id, :texto_id
  json.url mensaje_url(mensaje, format: :json)
end
