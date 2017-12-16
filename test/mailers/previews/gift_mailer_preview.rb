# Preview all emails at http://localhost:3000/rails/mailers/gift_mailer
class GiftMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/gift_mailer/send_gift
  def send_gift
    GiftMailer.send_gift
  end

end
