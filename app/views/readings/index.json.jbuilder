json.array!(@readings) do |reading|
  json.extract! reading, :id, :date, :systolic, :diastolic, :heart_rate, :user_id
  json.url reading_url(reading, format: :json)
end
