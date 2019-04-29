json.extract! noticia, :id, :titulo, :descripcion_corta, :url, :contenido, :fecha, :sitio_id, :created_at, :updated_at
json.url noticia_url(noticia, format: :json)
