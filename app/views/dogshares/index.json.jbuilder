json.array!(@dogshares) do |dogshare|
  json.extract! dogshare, :dog_id, :sitter_id, :available
  json.url dogshare_url(dogshare, format: :json)
end
