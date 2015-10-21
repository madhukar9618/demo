json.array!(@doctors) do |doctor|
  json.extract! doctor, :id, :name, :address, :city, :state, :zip, :school_recieved_degree_from, :years_in_pracice
  json.url doctor_url(doctor, format: :json)
end
