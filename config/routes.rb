Rails.application.routes.draw do

  root 'login#index'

  get '/login' => 'login#new'
  get '/login/incorrect' => 'login#login_incorrect'
  patch '/login' => 'login#update'
  get '/login/profile' => 'login#profile'
  get 'logout' => 'login#logout'

  get '/agenda/index' => 'agenda#index'
  get '/question/index' => 'questions#index'
  get 'edit_profile' => 'login#edit'
  get '/event_new' => 'admin#new'

  get 'about' => 'about#index'

  #ADMIN ROUTES
  get '/admin' => 'admin#index'
  patch '/event_new' => 'admin#create'
  get '/event/show/:id' => 'admin#show'
  get '/event/edit/:id' => 'admin#edit'
  patch '/event/edit/:id' => 'admin#update'
  delete '/event/edit/:id' => 'admin#delete'
  get '/event/edit/:id' => 'admin#edit'

  get '/event/:id' => 'agenda#show'

  post '/event/:id' => 'questions#create'

  get '/questions/recent' => 'questions#recent'
  get '/questions/trending' => 'questions#trending'
  get '/questions/most' => 'questions#most'
  get '/questions/random' => 'questions#random'

end
