json.array!(@games) do |game|
  json.extract! game, :name, :picture
  json.url game_url(game, format: :json)
end
