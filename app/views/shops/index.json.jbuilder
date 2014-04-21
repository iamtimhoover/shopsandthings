json.array!(@shops) do |shop|
  json.extract! shop, :id, :title, :description
  json.url shop_url(shop, format: :json)
end
