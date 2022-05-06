require "capybara/rspec"
require_relative "../../app"

Capybara.app = Battle 

feature 'Hit points' do
  scenario 'it shows player hit points' do 
    sign_in_and_play
    expect(page).to have_content "George HP: 100"
  end
end 