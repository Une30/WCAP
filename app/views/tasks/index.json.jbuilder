json.array!(@tasks) do |task|
  json.extract! task, :id, :user_id, :patient_id, :clinic_id
  json.url task_url(task, format: :json)
end
