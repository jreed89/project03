Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


 root to: "boxes#index"

 get "items", to: "items#index"
 get "items/new", to: "items#new"
 get "items/edit/:id", to: "items#edit", as: :item_edit
 get "items/:id", to: "items#show", as: :item
 post "items", to: "items#create"

 patch "items/:id", to: "items#update"
 delete "items/:id", to: "items#destroy"


 get "boxes", to: "boxes#index"
 get "boxes/new", to: "boxes#new"
 get "boxes/:id", to: "boxes#show", as: :box
 post "boxes", to: "boxes#create"
 get "boxes/:id/edit", to: "boxes#edit", as: :box_edit
 patch "boxes/:id", to: "boxes#update"
 delete "boxes/:id", to: "boxes#destroy"
# root 'boxes#index'
#   resources :boxes, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
#     resources :items, only: [:index, :show, :new, :create, :edit, :update, :destroy]

# end

end
