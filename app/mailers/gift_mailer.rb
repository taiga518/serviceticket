class GiftMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.gift_mailer.send_gift.subject
  #
  def send_gift(booking)
   @booking = booking
    mail to:      @booking.to_email,
         subject: 'ギフトが届きました。'
  end
end
