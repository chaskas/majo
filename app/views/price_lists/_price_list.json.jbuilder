json.extract! price_list, :id, :price, :ingredient_id, :supplier_id, :created_at, :updated_at
json.url price_list_url(price_list, format: :json)
