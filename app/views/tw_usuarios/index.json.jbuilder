json.array!(@tw_usuarios) do |tw_usuario|
  json.extract! tw_usuario, :id, :username, :mensaje_id
  json.url tw_usuario_url(tw_usuario, format: :json)
end
