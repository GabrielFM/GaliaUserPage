class UsersController < ApplicationController
  before_action :init_user



  def new
  end

  def info
  	init_situation
  end

  def pump
    init_situation
    @situation.update_attributes(pump: true)
    @situation.save
    redirect_to("/info/#{@user.id}")
  end

  private

  	def init_situation
  		@situation = Situation.find_by(user_id: @user.id)
  	end

  	def init_user
  		@user = current_user
      @parameter = Parameter.find_by(user_id: current_user.id)
  	end

end
