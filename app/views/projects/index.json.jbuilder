json.array!(@projects) do |project|
  json.extract! project, :id, :address, :latitude, :longitude, :system_size, :derate, :tilt
  json.url project_url(project, format: :json)
end
