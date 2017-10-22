
json.array!(@artist.songs) do |song|
  json.extract! song,
  :id,
  :title,
  :created_at,
  :updated_at,
  :artist
end
