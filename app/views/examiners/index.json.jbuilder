json.array!(@examiners) do |examiner|
  json.extract! examiner, :id, :clinic_id, :user_id
  json.url examiner_url(examiner, format: :json)
end
