json.array!(@regs) do |reg|
  json.extract! reg, :id, :clinic_id, :user_id, :patient_id
  json.url reg_url(reg, format: :json)
end
