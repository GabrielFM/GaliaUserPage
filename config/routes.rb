Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# get 'info'

	post '/infoUpdate/:info/:val', to 'application#infoUpdate'

end
