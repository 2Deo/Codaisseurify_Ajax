require 'rails_helper'

feature 'Manage songs', js: true do
  scenario 'checks all artists button' do

    visit '/artists/'

    expect(page).to have_selector(:link_or_button, 'All Artists')

  end
end
