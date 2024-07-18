class FruitFacade
  def self.searched_fruit(search)
    fruits = FruitService.call_api('api/fruit/all')
    fruits.find_all do |fruit| 
      fruit[:name].downcase == search.downcase 
    end
  end
end
