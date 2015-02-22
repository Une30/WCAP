json.array!(@ddtquestions) do |ddtquestion|
  json.extract! ddtquestion, :id, :type, :value1, :value2, :value3
  json.url ddtquestion_url(ddtquestion, format: :json)
end
