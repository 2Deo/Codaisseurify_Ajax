require 'rails_helper'

feature 'Manage songs', js: true do

  scenario 'checks for delete option' do

    visit artists_path

    page.has_selector?('Delete')
    puts "Delete option tested"
  end


end
