class FruitFacade
  def self.searched_fruit(search)
    fruits = FruitService.call_api('api/fruit/all')
    require 'pry' ; binding.pry
    fruits.find_all do |fruit| 
      fruit[:name] == search 
    end
  end
end
