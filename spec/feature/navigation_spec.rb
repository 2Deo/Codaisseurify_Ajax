require 'capybara'
require 'pry'

describe 'Codaisseurify' do
  include Capybara::DSL
  before do
    Capybara.app_host = 'localhost:3000'
    Capybara.run_server = false
    Capybara.default_driver = :selenium
  end
  it 'waits for the app to change' do
    visit '/'
    binding.pry
  end
end
