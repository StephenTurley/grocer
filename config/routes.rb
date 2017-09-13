Rails.application.routes.draw do
  root 'home#index'
  get 'api/recipes' => 'recipe#show'
  post 'api/recipe' => 'recipe#create'
end
