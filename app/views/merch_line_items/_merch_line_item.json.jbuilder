json.extract! merch_line_item, :id, :merch_id, :cart_id, :created_at, :updated_at
json.url merch_line_item_url(merch_line_item, format: :json)
