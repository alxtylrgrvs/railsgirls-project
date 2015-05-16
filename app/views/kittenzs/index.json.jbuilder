json.array!(@kittenzs) do |kittenz|
  json.extract! kittenz, :id, :name, :description, :picture
  json.url kittenz_url(kittenz, format: :json)
end
