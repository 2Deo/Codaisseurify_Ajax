class Song < ApplicationRecord
  belongs_to :artist, optional: true
  validates :title, presence: true
end
