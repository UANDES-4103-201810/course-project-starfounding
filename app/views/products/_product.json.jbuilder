json.extract! product, :id, :category_id, :user_id, :title, :description, :goal, :finishDate, :mainVideo, :mainImage, :rating, :created_at, :updated_at
json.url product_url(product, format: :json)
