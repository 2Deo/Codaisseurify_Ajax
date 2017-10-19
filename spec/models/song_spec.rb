require 'rails_helper'

RSpec.describe Song, type: :model do

  describe "validations" do
    it "is invalid without a title" do
      song = Song.new(title: "")
      song.valid?
      expect(song.errors).to have_key(:title)
    end
  end

  describe "association with artist" do
  let(:artist) { create :artist }

  it "belongs to a artist" do
    song = artist.songs.build(title:"hoi dan")

    expect(song.artist).to eq(artist)
  end
end

end
