require "capybara/rspec"
require_relative "../../app"

Capybara.app = CounterApp

feature "time last updated" do
  scenario "page loads with when the count was last updated" do
    visit("/")
    expect(page).to have_content 0
    click_button "Decrement"
    expect(page).to have_content "Last updated:"
  end
end