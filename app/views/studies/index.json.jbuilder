json.array!(@studies) do |study|
  json.extract! study, :id, :subject_id, :student_id
  json.url study_url(study, format: :json)
end
