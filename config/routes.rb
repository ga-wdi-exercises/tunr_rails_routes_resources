Rails.application.routes.draw do
  root to: 'artists#index'

  # resources :artists
  # resources :songs

  # `resources :artists` generates the following routes
  get    '/artists'           => 'artists#index'
  get    '/artists/new'       => 'artists#new', as: "new_artist"
  get    '/artists/:id'       => 'artists#show', as: "artist"
  post   '/artists'           => 'artists#create'
  get    '/artists/:id/edit'  => 'artists#edit', as: "edit_artist"
  patch    '/artists/:id'       => 'artists#update'
  delete '/artists/:id'       => 'artists#destroy'

  # `resources :songs` generates the following routes
  get    '/songs'           => 'songs#index'
  get    '/songs/new'       => 'songs#new', as: "new_song"
  get    '/songs/:id'       => 'songs#show', as: "song"
  post   '/songs'           => 'songs#create'
  get    '/songs/:id/edit'  => 'songs#edit', as: "edit_song"
  patch    '/songs/:id'       => 'songs#update'
  delete '/songs/:id'       => 'songs#destroy'
end
