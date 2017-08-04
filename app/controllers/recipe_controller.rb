class RecipeController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def show
    render :json => Recipe.all
  end

  def create
    Recipe.new(name: params[:name], description: params[:description]).save
  end
end
