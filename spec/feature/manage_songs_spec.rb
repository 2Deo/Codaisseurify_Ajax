require 'rails_helper'

feature 'Manage songs', js: true do

  let!(:artist) {create :artist, name: "Bolo"}
  let!(:song) {create :song, artist: artist, title: "Popo"}
  let!(:song) {create :song, artist: artist, title: "Solo"}

  scenario 'add a song' do

    visit artists_path

    fill_in 'title', with: 'Popify'

    page.execute_script("$('form').submit()")

    expect(page).to have_content('Popify')
  end

  scenario 'delete a song' do

    visit artists_path

    page.accept_confirm do
      click_link 'Delete'
    end

      expect(page).not_to have_content('Popo')
  end

  scenario 'delete all' do
    visit artists_path

    page.find("#deleteAll").click

    expect(page).not_to have_content('Popify', 'Popo', 'Solo')
  end
end
