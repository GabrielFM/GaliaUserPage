Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# get 'info'
	root 'application#info'
	get '/infoUpdate/:info/:val', to: 'application#infoUpdate'

end
