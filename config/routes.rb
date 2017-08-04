Rails.application.routes.draw do
  root 'home#index'
  get 'recipes' => 'recipe#show'
  post 'recipe' => 'recipe#create'
end
