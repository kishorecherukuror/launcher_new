class MessagesController < ApplicationController
	layout :false
	before_filter :authenticate_user!
  def index
  @users=User.all
   @users -= [current_user]
  end
end
