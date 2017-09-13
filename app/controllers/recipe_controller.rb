class RecipeController < ApplicationController
  # TODO figure out a better way to handle CSRF
  skip_before_action :verify_authenticity_token
  def show
    render :json => Recipe.all
  end

  def create
    Recipe.new(name: params[:name], description: params[:description]).save
  end
end
