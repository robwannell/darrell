json.array!(@pages) do |page|
  json.extract! page, :id, :pagetitle, :keywords, :description, :content
  json.url page_url(page, format: :json)
end
