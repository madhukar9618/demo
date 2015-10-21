json.array!(@pets) do |pet|
  json.extract! pet, :id, :pet_name, :type_of_pet, :breed, :age, :weight, :date_of_last_visit, :customer_id
  json.url pet_url(pet, format: :json)
end
