json.array!(@products) do |product|
  json.extract! product, :id, :description, :image_url, :title, :price
  json.url product_url(product, format: :json)
end
