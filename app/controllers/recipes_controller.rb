class RecipesController < ApplicationController
  def index
    # @r = Recipe.new
    # @r.name ="t1"
    # @r.instructions = "in1"
    # @r.save
    @recipes = if params[:keywords]
                 Recipe.where('name like ?',"%#{params[:keywords]}%")
               else
                 []
               end
    # puts @recipes
    # @recipes
  end
end
