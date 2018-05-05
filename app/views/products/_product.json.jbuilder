json.extract! product, :id, :user_id, :category_id, :title, :description, :goal, :decimal, :finishDate, :mainVideo, :mainImage, :rating, :created_at, :updated_at
json.url product_url(product, format: :json)
