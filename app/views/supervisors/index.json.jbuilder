json.array!(@supervisors) do |supervisor|
  json.extract! supervisor, :id, :user_id, :clinic_id
  json.url supervisor_url(supervisor, format: :json)
end
