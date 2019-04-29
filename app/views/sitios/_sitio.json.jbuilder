json.extract! sitio, :id, :nombre, :descripcion, :url, :ultimo_indexado, :created_at, :updated_at
json.url sitio_url(sitio, format: :json)
