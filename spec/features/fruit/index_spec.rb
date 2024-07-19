require "rails_helper"

RSpec.describe "user can search fruit by name" do 
  describe "HAPPY PATHS" do 
    it "can see searched fruit and attributes" do 
      # When I visit the root path ("/"),
      visit fruits_path

      within '.fruit' do
        expect(page).to have_css(".name")
        expect(page).to have_css(".family")
        expect(page).to have_css(".order")
        expect(page).to have_css(".genus")
        expect(page).to have_css(".nutrition", text: "Calories")
        expect(page).to have_css(".nutrition", text: "Fat")
        expect(page).to have_css(".nutrition", text: "Sugar")
        expect(page).to have_css(".nutrition", text: "Carbohydrates")
        expect(page).to have_css(".nutrition", text: "Protein")
      end
    end
  end
end
