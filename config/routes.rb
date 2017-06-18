Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'

  get 'user/new'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# get 'info'
	root 'application#info'
	put '/infoUpdate', to: 'application#infoUpdate'

	get    '/login',   to: 'sessions#new'
  	post   '/login',   to: 'sessions#create'
  	delete '/logout',  to: 'sessions#destroy'

end
