json.extract! post, :id, :title, :category, :description, :date, :time, :author_id, :created_at, :updated_at
json.url post_url(post, format: :json)
