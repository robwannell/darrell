json.array!(@events) do |event|
  json.extract! event, :id, :name, :start_time, :location, :content
  json.url event_url(event, format: :json)
end
