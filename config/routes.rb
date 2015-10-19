Rails.application.routes.draw do
  root 'pins#index'
  # get '/pins', to: 'pins#index'
  # get '/pins/new', to: 'pins#new'
  # post '/pins', to: 'pins#create'
  # get '/pins/:id', to: 'pins#show', as: :pin 
  
  # why dont we need `as: pin to the edit and delete routes?`
  # get '/pins/:id/edit', to: 'pins#edit'
  # pathc is intended to send over changes
  # patch '/pins/:id', to: 'pins#update'
  # put '/pins/:id', to: 'pins#update'
  # delete '/pins/:id', to: 'pins#destroy'
  resources :pins
end
