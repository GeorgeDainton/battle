require "capybara/rspec"
require_relative "../../app"

Capybara.app = Battle 

feature 'attack' do
  scenario 'it confirms attack on other play' do
    sign_in_and_play
    click_link('Attack')

    expect(page).to have_content('George attacked Russell... it was super effective.')
  end
end
