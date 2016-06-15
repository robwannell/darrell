json.array!(@pics) do |pic|
  json.extract! pic, :id, :caption
  json.url pic_url(pic, format: :json)
end
