json.array!(@stores) do |store|
  json.extract! store, :id, :product_name, :brand, :description, :color, :price, :feature1, :feature2
  json.url store_url(store, format: :json)
end
