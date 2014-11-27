json.array!(@textos) do |texto|
  json.extract! texto, :id, :texto, :idioma
  json.url texto_url(texto, format: :json)
end
