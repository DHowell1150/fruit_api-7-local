class FruitsController < ApplicationController
  def index
    # will have (params[:search])
    
    @fruits = FruitFacade.searched_fruit(params[:search])
    require 'pry' ; binding.pry
  end
end