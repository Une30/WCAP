json.array!(@ddtanswers) do |ddtanswer|
  json.extract! ddtanswer, :id, :q1, :q2, :q3
  json.url ddtanswer_url(ddtanswer, format: :json)
end
