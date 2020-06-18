json.extract! merch, :id, :category, :size, :price, :quantity, :title, :description, :created_at, :updated_at
json.url merch_url(merch, format: :json)
