Rails.application.routes.draw do
  resources :addto_books
  resources :books
	
  get 'books/delete'
  root 'books#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
