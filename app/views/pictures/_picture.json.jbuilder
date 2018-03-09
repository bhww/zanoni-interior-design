json.extract! picture, :id, :gallery_id, :name, :description, :created_at, :updated_at
json.url picture_url(picture, format: :json)
