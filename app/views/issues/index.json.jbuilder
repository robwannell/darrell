json.array!(@issues) do |issue|
  json.extract! issue, :id, :title, :description, :content
  json.url issue_url(issue, format: :json)
end
