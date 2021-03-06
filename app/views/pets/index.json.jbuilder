json.array!(@pets) do |pet|
  json.extract! pet, :id, :name, :pet_type, :breed, :age, :weight, :date_of_last_visit
  json.url pet_url(pet, format: :json)
end
