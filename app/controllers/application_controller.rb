class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def show_info 
  	info = params[:info]
  	value = params[:value]
  	sit = Situation.first
  	sit.update_attributes(temp: params[:value])
  	sit.save
  end

  def info
  end
end
