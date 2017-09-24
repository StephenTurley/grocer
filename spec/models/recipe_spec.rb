require 'rails_helper'

describe Recipe, type: :model do

  let(:valid_recipe) { Recipe.new(name: 'derp', description: 'flerpn') }

  subject { valid_recipe }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid when without a name' do
    valid_recipe.name = nil

    expect(subject).to_not be_valid
  end

  it 'is not valid when without a description' do
    valid_recipe.description = nil

    expect(subject).to_not be_valid
  end
end
