require "capybara/rspec"
require_relative "../../app"

Capybara.app = CounterApp

feature "decrement the count" do
  scenario "click the Decrement button and see the number decrement" do
    visit("/")
    expect(page).to have_content 0
    click_button "Decrement"
    expect(page).to have_content -1
  end
end