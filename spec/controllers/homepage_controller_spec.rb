require 'rails_helper'

RSpec.describe "home page", :type => :request do
  it "Displays App Name" do
    get '/'
    expect(page).to have_content("GRITINHO")
  end
end
