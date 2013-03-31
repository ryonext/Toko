json.array!(@works) do |work|
  json.extract! work, :workspace_id, :name, :creater, :description, :original
  json.url work_url(work, format: :json)
end