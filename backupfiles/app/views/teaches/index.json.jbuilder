json.array!(@teaches) do |teach|
  json.extract! teach, :id, :teacher_id, :subject_id
  json.url teach_url(teach, format: :json)
end
