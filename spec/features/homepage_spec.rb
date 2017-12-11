require "rails_helper"

RSpec.feature "home page", :type => :feature do
  scenario "Displays App Name" do
    visit "/homepage"
    expect(page).to have_content("GRITINHO")
  end

  scenario "Displays Nando's restaurant on front page" do
    Restaurant.create(name: "Nando's", description: "Cheeky banter with a side of chat")
    visit '/homepage'
    expect(page).to have_content("Nando's")
    expect(page).to have_content("Cheeky banter with a side of chat")
  end
end
