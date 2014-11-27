json.array!(@fechas) do |fecha|
  json.extract! fecha, :id, :fecha
  json.url fecha_url(fecha, format: :json)
end
