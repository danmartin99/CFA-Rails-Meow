json.extract! meow_post, :id, :content, :user_id, :created_at, :updated_at
json.url meow_post_url(meow_post, format: :json)
