json.array!(@products) do |product|
  json.extract! product, :id, :title, :description, :shop_id
  json.url product_url(product, format: :json)
end
