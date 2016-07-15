Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: "items#index"

get "items", to: "items#index"
get "items/new", to: "items#new"
get "items/:id", to: "items#show", as: :item
post "items", to: "items#create"
get "items/:id/edit", to: "items#edit", as: :item_edit
patch "items/:id", to: "items#update"
delete "items/:id", to: "itemss#destroy"


get "box", to: "box#index"





end