require 'rails_helper'

RSpec.describe Fruit do 
  it "exists and has attrubutes" do 
    @fruit = Fruit.new("Banana")

    expect(@fruit).to be_a(Fruit)
    expect(@fruit.name).to eq("Banana")
  end
end