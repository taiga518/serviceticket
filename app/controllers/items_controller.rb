class ItemsController < ApplicationController

  def index
    @items = Item.all.order(created_at:"desc")
  end
  
  def new
    @item = Item.new
  end
  
  def show
    @item = Item.find(params[:id])
    @booking = Booking.new
  end
  
  def create
    @item = Item.new(item_params)
    @item.user_id = current_user.id
    if @item.save
      @user = current_user
      @user.item_id = @item.id
      @user.save
      redirect_to item_path(@item.id)
    else
      render "new"
      #render plain: @item.errors.inspect
    end
  end
  
  def edit
    @item = Item.find(params[:id])
  end
  
  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to items_path
    else
      render "edit"
    end
  end
  
  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path
  end
  
  def search_tmp
    key_str = params[:search][:key]
    keyAry = key_str.split(" ")
    key_join_plus = keyAry.join("+")
    redirect_to search_path(key_join_plus)
  end
  
  def search
    key_str = params[:key]
    keyAry = key_str.split("+")
    @items = []
    tmparry=[]
    for key in keyAry do
      tmp_match = Item.where("title like '%" + key + "%'")
      if tmp_match
        for tmp in tmp_match do
          tmparry << tmp.id
        end
      end
    end
    @items = Item.find(tmparry)
  end


  private 
    def item_params
      params.require(:item).permit(:title, :body, :location, :price, :reputation, :image)
    end


end
