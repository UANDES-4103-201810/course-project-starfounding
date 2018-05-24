json.extract! project, :id, :category_id, :user_id, :title, :description, :goal, :finishDate, :mainVideo, :mainImage, :created_at, :updated_at
json.url project_url(project, format: :json)
