require 'rails_helper'

feature 'Manage songs', js: true do
  scenario 'checks for delete option' do

   # Point your browser towards the song path
    visit '/artists/'

    expect(page).to have_selector(:link_or_button, 'All Artists')



    # page.has_selector?('Delete')

  end
end
