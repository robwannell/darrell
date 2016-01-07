json.array!(@endorsements) do |endorsement|
  json.extract! endorsement, :id, :firstname, :lastname, :category, :title, :organization, :rank
  json.url endorsement_url(endorsement, format: :json)
end
