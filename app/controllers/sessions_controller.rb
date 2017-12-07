class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by(name:params[:session][:name])
    if !!user && user.authenticate(params[:session][:password])
      flash.now[:danger] = "welcome #{user.name}"
      log_in(user)
      redirect_to user_path(user.id)
    else
      flash[:danger] = "invalit input"
      render "new"
    end
  end
  
  def destroy
    log_out
    redirect_to users_path
  end


end
