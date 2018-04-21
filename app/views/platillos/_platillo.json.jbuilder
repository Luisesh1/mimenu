json.extract! platillo, :id, :nombre, :precio, :descripcion, :created_at, :updated_at
json.show platillo_url(platillo)
json.edit edit_platillo_url(platillo)
json.avatar_mini platillo.avatar.mini.url