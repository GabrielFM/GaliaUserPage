class ApplicationController < ActionController::Base
  # protect session
  # protect_from_forgery with: :exception

  def infoUpdate 
  	username = params[:username]
  	user = User.find_by(username: username)
  	if user != nil
  		password = params[:password]
  		if user.authenticate(password)
		  	sit = Situation.find_by(user_id: user.id)
		  	sit.update_attributes(temp: params[:temp],
		  									  umidity: params[:umidity],
		  									  pump: params[:pump],
		  									  lum: params[:lum],
		  									  water_level: params[:water_level])
		  	sit.save
		end
	end
  end

  def info
  end
end
