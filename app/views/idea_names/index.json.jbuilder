json.array!(@idea_names) do |idea_name|
  json.extract! idea_name, :id, :name, :description, :picture
  json.url idea_name_url(idea_name, format: :json)
end
