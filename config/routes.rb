Rails.application.routes.draw do
  # get 'songs/index'
  #
  # get 'songs/new'
  #
  # get 'songs/edit'
  #
  # get 'songs/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root "artists#index"

resources :artists
resources :songs

end
