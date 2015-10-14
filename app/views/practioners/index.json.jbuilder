json.array!(@practioners) do |practioner|
  json.extract! practioner, :id, :name, :address, :state, :city, :zip, :school_degree_received_from, :years_in_practice
  json.url practioner_url(practioner, format: :json)
end
