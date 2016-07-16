Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root to: "items#index"

get "items", to: "items#index"
get "items/new", to: "items#new"
get "items/:id", to: "items#show", as: :item
post "items", to: "items#create"
get "items/:id/edit", to: "items#edit", as: :item_edit
patch "items/:id", to: "items#update"
delete "items/:id", to: "items#destroy"





get "boxes", to: "boxes#index"
get "boxes/new", to: "boxes#new"
get "boxes/:id", to: "boxes#show", as: :box
post "boxes", to: "boxes#create"
get "boxes/:id/edit", to: "boxes#edit", as: :box_edit
patch "boxes/:id", to: "boxes#update"







end
