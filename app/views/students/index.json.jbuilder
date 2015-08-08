json.array!(@students) do |student|
  json.extract! student, :id, :student_name, :father_name, :rollnumber, :course, :semester
  json.url student_url(student, format: :json)
end
