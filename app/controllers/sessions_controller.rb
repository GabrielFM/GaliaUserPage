class SessionsController < ApplicationController
  before_action :not_logged_in_user, only: [:new, :create]
  def new
  end

  def create
  	userparams = params.require(:session).permit(:username, :password)
  	user = User.find_by(username: userparams[:username])
  	if user && user.authenticate(userparams[:password])
  		log_in user
  		flash[:success] = 'Login efetado com sucesso'
  		redirect_to "/info/#{user.id}"
  	else
  		flash[:danger] = 'Erro ao efetuar o login'
  		redirect_to '/login'
  	end
  end

  def destroy
    log_out
    redirect_to '/'
  end
end
