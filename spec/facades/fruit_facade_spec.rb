require 'rails_helper'

RSpec.describe FruitFacade do 
    it "exists and has attributes" do 
    result = FruitFacade.searched_fruit("Banana")
    fruit = result.first
    expect(result).to be_a(Array)
    expect(fruit).to be_a(Hash)
    expect(fruit[:name]).to be_a(String)
    end
end