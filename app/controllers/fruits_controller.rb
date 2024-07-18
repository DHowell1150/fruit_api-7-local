class FruitsController < ApplicationController
  def index
    # will have (params[:search])
    @fruits = FruitFacade.searched_fruit(params[:search])
  end
end