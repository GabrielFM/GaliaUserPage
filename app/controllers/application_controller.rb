class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def show_info 
  	info = params[:info]
  	value = params[:value]
  	Situation.first.update_attributes(temp: params[:value])
  end
end
