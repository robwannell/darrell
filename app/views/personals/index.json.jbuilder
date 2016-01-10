json.array!(@personals) do |personal|
  json.extract! personal, :id, :title, :name, :position, :content
  json.url personal_url(personal, format: :json)
end
