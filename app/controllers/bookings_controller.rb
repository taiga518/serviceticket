class BookingsController < ApplicationController

  def create
    @booking = Booking.new(booking_params)
    @booking.serial = SecureRandom.hex(5)
    if @booking.save
      GiftMailer.send_gift(@booking).deliver
      redirect_to booking_path(@booking.id)
    else
      redirect_to(item_path(@booking.item_id))
      #render plain: @item.errors.inspect
    end
  end
  
  def show
    @booking = Booking.find(params[:id])
  end
  
  def validate_booking_confirm
    @booking = Booking.find(params[:booking_id])
    render 'users/validate_booking_confirm.html.erb'
  end
  
  
  def validate_booking
    if current_user.authenticate(params[:booking_validation][:password])
      @booking = Booking.find(params[:booking_validation][:booking_id])
      if @booking.serial == params[:booking_validation][:serial] 
        @booking.validation = true 
        @booking.save
      end
    end
    redirect_to(management_path)
  end
  
  
  private 
    def booking_params
      params.require(:booking).permit(:to_name, :gift_type, :message, :delivery_method, :to_email, :from_name, :from_email, :item_id)
    end

end


