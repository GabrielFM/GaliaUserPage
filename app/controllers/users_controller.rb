class UsersController < ApplicationController
  before_action :init_user


  def new
  end

  def info
  	init_situation
  end

  private

  	def init_situation
  		@situation = Situation.find_by(user_id: @user.id)
  	end

  	def init_user
  		@user = current_user
  	end

end
