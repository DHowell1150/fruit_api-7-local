class FruitFacade
  def self.searched_fruit(search)
    # search = search.upcase
    fruits = FruitService.call_api('api/fruit/all')
    fruits.find_all do |fruit| 
      next unless search.present?
      p search.downcase
      fruit[:name].downcase == search.downcase
    end
  end
end
