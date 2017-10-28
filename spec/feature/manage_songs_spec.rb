require 'rails_helper'

feature 'Manage songs', js: true do

  let(:artist) {create :artist}
  scenario 'add a new song' do

    visit artist_path(artist.id)

    fill_in 'new-song', with: 'Evil Twin'

    page.execute_script("$('form').submit()")

    expect(page).to have_content('Evil Twin')
  end
end
