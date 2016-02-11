json.array!(@jungle_book_wolves) do |jungle_book_wolf|
  json.extract! jungle_book_wolf, :id, :description
  json.url jungle_book_wolf_url(jungle_book_wolf, format: :json)
end
