class GiftMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.gift_mailer.send_gift.subject
  #
  def send_gift(booking)
   @booking = booking
    mail to:      @booking.to_email,
         subject: "#{@booking.from_name}様からギフトが届きました。"
  end
  
  def send_receipt(booking)
    @booking = booking
    mail to:      @booking.from_email,
         subject: 'ギフトを発送しました。'
  end
  
  
end
