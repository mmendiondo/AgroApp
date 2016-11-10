json.extract! establecimiento, :id, :nombre, :descripcion, :precio, :cantidad, :created_at, :updated_at
json.url establecimiento_url(establecimiento, format: :json)