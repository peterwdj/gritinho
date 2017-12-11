require "rails_helper"

RSpec.feature "new restaurant", :type => :feature do
  scenario "Page has form to create new restaurant" do
    visit "/restaurant/new" do
      expect(page).to have_field("Name")
      expect(page).to have_field("Description")
      expect(page).to have_button("Create new restaurant")
    end
  end
end
