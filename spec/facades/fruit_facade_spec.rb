require 'rails_helper'

RSpec.describe FruitFacade do 
    it "exists and has attributes" do 
    search = "Banana"
    result = FruitFacade.searched_fruit(search)
    fruit = result.first
    expect(result).to be_a(Array)
    expect(fruit).to be_a(Hash)
    expect(fruit[:name]).to be_a(String)

    expect(fruit[:name].downcase).to eq(search.downcase)
    end
end