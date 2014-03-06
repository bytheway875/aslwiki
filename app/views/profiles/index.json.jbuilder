json.array!(@profiles) do |profile|
  json.extract! profile, :id, :nickname, :bio, :avatar, :city, :state
  json.url profile_url(profile, format: :json)
end
