require 'rails_helper'

RSpec.describe 'Recipes', :type => :request do
  it 'should create the recipe' do
    recipe_json = ' { "name": "derp", "description": "some stuff" } '
    headers = { 'CONTENT_TYPE' => 'application/json' }

    post '/api/recipe', :params => recipe_json, :headers => headers

    result = Recipe.find_by(name: 'derp')
    expect(result.description).to eq('some stuff')
  end

  it 'should render the recipes' do
    Recipe.new(name: 'foo', description: 'bar').save
    Recipe.new(name: 'derp', description: 'flerp').save

    get '/api/recipes'

    expect(response.body).to eq(Recipe.all.to_json)
  end
end
