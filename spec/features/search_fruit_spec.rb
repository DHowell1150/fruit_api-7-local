require "rails_helper"

RSpec.describe "user can search fruit by name" do 
  describe "HAPPY PATHS" do 
    it "can search a fruit by name" do 
      # When I visit the root path ("/"),
      visit "/"

      # I see a form with a search box for fruit and a button. 
      within '#fruit-search' do
        expect(page).to have_field(:search)
      end

      # When I enter the name of a fruit and click "Search"
      fill_in :search, with: "banana"
      click_on "Search"

      # I am taken to the "/fruits" page
      expect(current_path).to eq(fruits_path)

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

