class FruitFacade
  def self.searched_fruit(search)
    fruits = FruitService.call_api('api/fruit/all')
    fruits.find_all do |fruit| 
      require 'pry' ; binding.pry
      fruit[:name].downcase == search.downcase 
    end
  end
end
