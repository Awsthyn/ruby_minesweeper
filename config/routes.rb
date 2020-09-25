Rails.application.routes.draw do
  resources :board
  root 'board#new'
  get 'board/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
