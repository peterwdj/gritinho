require "rails_helper"

RSpec.feature "home page", :type => :feature do
  scenario "Displays App Name" do
    visit "/"
    expect(page).to have_content("GRITINHO")
  end

  scenario "Displays Nando's restaurant on front page" do
    Restaurant.create(name: "Nando's", description: "Cheeky banter with a side of chat")
    visit '/'
    expect(page).to have_content("Nando's")
    expect(page).to have_content("Cheeky banter with a side of chat")
  end

  scenario "Displays button allowing user to create new restaurant" do
    visit "/"
    expect(page).to have_button("New Restaurant")
  end

  scenario "Clicking New Restaurant button takes the user to a page allowing them to add a new restaurant" do
    visit "/"
    click_button "New Restaurant"
    expect(page).to have_content "Create New Restaurant"  
  end
end
