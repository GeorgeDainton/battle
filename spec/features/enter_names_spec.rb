require "capybara/rspec"
require_relative "../../app"

Capybara.app = Battle

feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content "George vs. Russell"
  end
end
