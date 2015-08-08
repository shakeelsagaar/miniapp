json.array!(@subjects) do |subject|
  json.extract! subject, :id, :subject_code, :subject_title
  json.url subject_url(subject, format: :json)
end
