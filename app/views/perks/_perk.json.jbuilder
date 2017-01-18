json.extract! perk, :id, :name, :description, :perk_type_id, :user_id, :created_at, :updated_at
json.url perk_url(perk, format: :json)