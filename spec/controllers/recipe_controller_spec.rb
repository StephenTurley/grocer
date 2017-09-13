require 'rails_helper'

describe RecipeController, :type => :controller do

  it 'should be a controller' do
    expect(RecipeController).to be < ApplicationController
  end

  describe 'create' do
    let('recipe_double') { double(Recipe.class) }

    it 'should create a new Recipe' do
      allow(Recipe).to receive(:new).with(name: 'foo', description: 'bar').and_return recipe_double
      allow(recipe_double).to receive(:save)

      post :create, :params => { name: 'foo', description: 'bar' }

      expect(recipe_double).to have_received(:save)
    end
  end

  describe 'show' do
    it 'should return all recipes' do
      all_recipes = [ { foo: 'bar' } ]
      allow(Recipe).to receive(:all).and_return all_recipes

      get :show

      expect(response.body).to eq(all_recipes.to_json)
    end
  end
end

