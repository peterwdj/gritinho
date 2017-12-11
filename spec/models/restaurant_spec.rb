require 'rails_helper'

RSpec.describe Restaurant, type: :model do
	context "Creating record" do
		it "Creates a new restaurant record with correct name" do
			Restaurant.create(name: "Nando's", description: "Cheeky Banter")
			expect(Restaurant.first.name).to eq "Nando's"
		end
	end
end
