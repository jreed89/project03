Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: "items#index"

get "items", to: "items#index"
get "items/new", to: "items#new"
get "items/:id", to: "items#show", as: :item


get "box", to: "box#index"





end