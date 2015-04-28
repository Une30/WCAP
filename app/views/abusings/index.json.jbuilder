json.array!(@abusings) do |abusing|
  json.extract! abusing, :id, :drug_id, :first_use, :total_use, :using_days, :use_code, :patient_id, :comments
  json.url abusing_url(abusing, format: :json)
end
