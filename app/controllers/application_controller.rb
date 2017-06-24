class ApplicationController < ActionController::Base
  # protect session
  # protect_from_forgery with: :exception
  include SessionsHelper

  
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
		  									  water_level: params[:water_level],
                          ground_umi: params[:ground_umi])
		  	sit.save
		  end
	   end
     render layout: false
  end

  def info
  end


  private

    # Confirms a logged-in user.
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to '/login'
      end
    end

    def not_logged_in_user
      if logged_in?
        #Check usertype and redirect to respective page
        redirect_logged_user(current_user.id)
      end
    end

    def redirect_logged_user(user_id)
      if logged_in?
        redirect_to("/info/#{user_id}/")
      end
    end 
end
