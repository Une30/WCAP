json.array!(@profiles) do |profile|
  json.extract! profile, :id, :user_id, :first_name, :last_name
  json.url profile_url(profile, format: :json)
end
