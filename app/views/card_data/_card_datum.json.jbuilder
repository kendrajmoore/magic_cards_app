json.extract! card_datum, :id, :user_id, :name, :manaCost, :layout, :colors, :supertypes, :created_at, :updated_at
json.url card_datum_url(card_datum, format: :json)
