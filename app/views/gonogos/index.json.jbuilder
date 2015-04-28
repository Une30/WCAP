json.array!(@gonogos) do |gonogo|
  json.extract! gonogo, :id, :user_id
  json.url gonogo_url(gonogo, format: :json)
end
