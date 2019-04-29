json.extract! product, :id, :user_id_id, :name, :price, :department_id_id, :color, :url_link, :description, :created_at, :updated_at
json.url product_url(product, format: :json)
