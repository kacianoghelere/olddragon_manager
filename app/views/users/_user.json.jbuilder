json.extract! user, :id, :name, :login, :pass, :inc_date, :last_login, :email, :role_id, :created_at, :updated_at
json.url user_url(user, format: :json)