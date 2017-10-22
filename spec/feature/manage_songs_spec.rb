require 'rails_helper'

feature 'Manage songs', js: true do
  scenario 'delete a song' do

  #   # Point your browser towards the song path
    # visit "/artists/#{@artist}/songs"

    click_link "Delete"
     # Enter description in the text field
    fill_in "Title", with: "Evil Twin"

    page.should have_content "Evil Twin"

  end
end

  #
  #   # Press enter (to submit the form)
  #   page.execute_script("$('form').submit()")
  #
  #   # Expect the new task to be displayed in the list of tasks
  #   expect(page).to have_content('Milkman')
  # end
