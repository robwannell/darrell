json.array!(@testamonies) do |testamony|
  json.extract! testamony, :id, :name, :quote, :title
  json.url testamony_url(testamony, format: :json)
end
