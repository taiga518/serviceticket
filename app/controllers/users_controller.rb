class UsersController < ApplicationController
  def index
    @users = User.all.order(created_at:"desc")
  end
  
  def new
    @user = User.new
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path
    else
      render "new"
      #render plain: @item.errors.inspect
    end
  end
  
  def edit
    @item = item.find(params[:id])
  end
  
  def update
    @item = item.find(params[:id])
    if @item.update(item_params)
      redirect_to items_path
    else
      render "edit"
    end
  end
  
  def destroy
    @item = item.find(params[:id])
    @item.destroy
    redirect_to items_path
  end


  def management
  end

  private 
    def user_params
      params.require(:user).permit(:name, :password, :password_confirmation)
    end


end
