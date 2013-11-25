json.array!(@people) do |person|
  json.extract! person, :name, :zip, :dog_owner, :picture, :available_to_dogsit, :needs_dogsitting
  json.url person_url(person, format: :json)
end
