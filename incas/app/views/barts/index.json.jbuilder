json.array!(@barts) do |bart|
  json.extract! bart, :id, :user_id
  json.url bart_url(bart, format: :json)
end
