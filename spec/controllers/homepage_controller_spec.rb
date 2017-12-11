require 'rails_helper'

RSpec.feature HomepageController, type: :controller do
  feature "User visits the home page" do
    scenario "Displays Welcome message" do
      visit '/'
      expect(page).to have_content("GRITINHO")
    end
  end
end
