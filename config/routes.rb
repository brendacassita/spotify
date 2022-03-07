Rails.application.routes.draw do
  # prepend routes with api
  namespace :api do
    # menu                            
    # get from client                             tells you where to go
    # httpverb    '/path',                        'controller#method'
    get           'artists',                      to:'artists#index'       # all artist
    get           'artists/:id',                  to:'artists#show'        # one artist
    post          'artists',                      to:'artists#create'      # create artist
    put           'artists/:id',                  to:'artists#update'
    delete        'artists/:id',                  to:'artists#destroy'

    get           'artists/:artist_id/songs',     to:'songs#index'
    post          'artists/:artist_id/songs',     to:'songs#create'
    get           'artists/:artist_id/songs/:id', to:'songs#show'
    delete        'artists/:artist_id/songs/:id', to:'songs#destroy'
    put           'artists/:artist_id/songs/:id', to:'songs#update'
    
    # custom route

  end
end


# MENU HTTP - FOLLOW CONVENTION CRUD
# get localhost:3001/api/artists

# httpverb => method
# get => gets (index method)
# post => creates (create method)
# delete=> destroys (detroy method)
# put => updates (update method)