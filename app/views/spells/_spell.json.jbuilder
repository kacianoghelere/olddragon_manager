json.extract! spell, :id, :name, :range, :duration, :description, :effect_id, :element_type_id, :spell_circle_id, :user_id, :created_at, :updated_at
json.url spell_url(spell, format: :json)