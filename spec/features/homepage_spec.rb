require 'rails_helper'

RSpec.feature "home page", :type => :feature do
  scenario "Displays App Name" do
    visit '/homepage'
    expect(page).to have_content("GRITINHO")
  end
end
