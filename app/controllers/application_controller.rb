class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def infoUpdate 
  	info = params[:info]
  	value = params[:value]
  	sit = Situation.find(1)
  	sit.update_attributes(temp: params[:value])
  	sit.save
  end

  def info
  end
end
