json.array!(@attendances) do |attendance|
  json.extract! attendance, :id, :month, :subject, :status, :student_id
  json.url attendance_url(attendance, format: :json)
end
