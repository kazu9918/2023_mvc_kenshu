json.extract! comic, :id, :title, :content, :created_at, :updated_at
json.url comic_url(comic, format: :json)
