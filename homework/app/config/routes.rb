App::Application.routes.draw do
  get '/events', controller: 'events', action: 'index', as: 'events'

  get '/events/new', controller: 'events', action: 'new', as: 'new_event'
  post '/events', controller: 'events', action: 'create'

  get '/events/:id', controller: 'events', action: 'show', as: 'event'

  get '/events/:id/edit', controller: 'events', action: 'edit', as: 'edit_event'
  put '/events/:id', controller: 'events', action: 'update'

  delete '/events/:id', controller: 'events', action: 'destroy'

  get '/venues', controller: 'venues', action: 'index', as: 'venues'

  get '/venues/new', controller: 'venues', action: 'new', as: 'new_venue'
  post '/venues', controller: 'venues', action: 'create'

  get '/venues/:id', controller: 'venues', action: 'show', as: 'venue'

  get '/venues/:id/edit', controller: 'venues', action: 'edit', as: 'edit_venue'
  put '/venues/:id', controller: 'venues', action: 'update'

  delete '/venues/:id', controller: 'venues', action: 'destroy'

end
