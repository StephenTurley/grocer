Rails.application.routes.draw do
  root 'home#index'
  post 'api/recipe' => 'recipe#create'
end
