json.extract! product, :id, :name, :price, :colour, :size, :details, :code, :brand, :sizeandfit, :look, :lookafterme, :aboutme, :category_id, :created_at, :updated_at
json.url product_url(product, format: :json)
