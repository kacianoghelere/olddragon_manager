json.extract! item, :id, :name, :description, :weight, :price, :item_type_id, :user_id, :created_at, :updated_at
json.url item_url(item, format: :json)