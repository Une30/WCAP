json.array!(@rectangles) do |rectangle|
  json.extract! rectangle, :id, :gonogo_id, :state, :is_clicked, :time
  json.url rectangle_url(rectangle, format: :json)
end
