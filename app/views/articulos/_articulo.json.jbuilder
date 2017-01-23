json.extract! articulo, :id, :titulo, :subtitulo, :cuerpo, :created_at, :updated_at
json.url articulo_url(articulo, format: :json)