json.array!(@dogs) do |dog|
  json.extract! dog, :name, :age, :breed, :description, :temperament, :active, :housetrained, :picture, :special_needs
  json.url dog_url(dog, format: :json)
end
