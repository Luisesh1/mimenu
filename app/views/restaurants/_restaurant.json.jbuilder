json.extract! restaurant, :id, :nombre, :descripcion, :codigo_postal, :telefono, :created_at, :updated_at
json.show restaurant_url(restaurant)
json.edit edit_restaurant_url(restaurant)

