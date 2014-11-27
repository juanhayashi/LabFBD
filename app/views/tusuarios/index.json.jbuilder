json.array!(@tusuarios) do |tusuario|
  json.extract! tusuario, :id, :username, :mensaje_id
  json.url tusuario_url(tusuario, format: :json)
end
