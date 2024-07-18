require 'rails_helper'

RSpec.describe FruitService do 
  it "can return a list of fruits" do
    query = FruitService.call_api('/api/fruit/all')
    fruit = query.first
    expect(query).to be_a(Array)
    expect(fruit).to be_a(Hash)
    expect(fruit[:genus]).to be_a(String)
    expect(fruit[:name]).to be_a(String)
    expect(fruit[:id]).to be_a(Integer)
    expect(fruit[:family]).to be_a(String)
    expect(fruit[:order]).to be_a(String)
    expect(fruit[:nutritions]).to be_a(Hash)
  end
end