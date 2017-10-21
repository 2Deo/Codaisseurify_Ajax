class SongSerializer < ActiveModel::Serializer
  attributes :title
  belongs_to :artist
end
