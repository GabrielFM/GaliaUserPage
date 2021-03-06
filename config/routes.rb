Rails.application.routes.draw do

  get 'users/new'

  get 'user/new'

	root 'sessions#new'

	post '/infoUpdate', to: 'application#infoUpdate'
	get '/info/:id', to: 'users#info'
	get '/pump/:id', to: 'users#pump'

	get    '/login',   to: 'sessions#new'
  	post   '/login',   to: 'sessions#create'
  	delete '/logout',  to: 'sessions#destroy'

end
