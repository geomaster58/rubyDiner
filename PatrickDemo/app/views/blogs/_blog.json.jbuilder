json.extract! blog, :id, :friend, :body, :truth, :created_at, :updated_at
json.url blog_url(blog, format: :json)
