json.array!(@workspaces) do |workspace|
  json.extract! workspace, :name, :owner_id
  json.url workspace_url(workspace, format: :json)
end