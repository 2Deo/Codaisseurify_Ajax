require 'rails_helper'

feature 'Manage songs', js: true do
  scenario 'checks all artists button' do

   # Point your browser towards the song path
    visit '/artists/'

    expect(page).to have_selector(:link_or_button, 'All Artists')

  end
end
