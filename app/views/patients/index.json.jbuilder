json.array!(@patients) do |patient|
  json.extract! patient, :id, :user_id, :name
  json.url patient_url(patient, format: :json)
end
