class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(username: params[:session][:username])
  	if user && user.authenticate(params[:session][:password])
  		flash[:success] = 'login efetuado com sucesso'
  	else
  		flash[:danger] = 'Erro ao efetuar o login'
  	end
  	render 'new'
  end
end
