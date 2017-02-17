json.extract! evento, :id, :imagen, :titulo, :cuerpo, :created_at, :updated_at
json.url evento_url(evento, format: :json)