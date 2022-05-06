require "capybara/rspec"
require_relative "../../app"

Capybara.app = Battle 

feature 'Hit points' do
  scenario 'it shows player hit points' do 
    visit('/')
    fill_in :player_1_name, with: "George"
    fill_in :player_2_name, with: "Russell"
    click_button 'Submit'

    save_and_open_page

    expect(page).to have_content "George HP: 100"
  end
end 