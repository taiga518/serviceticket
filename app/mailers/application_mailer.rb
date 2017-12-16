class ApplicationMailer < ActionMailer::Base
  default from:     "service ticket"
         # bcc:      "sample+sent@gmail.com",
        #  reply_to: "sample+reply@gmail.com"
  layout 'mailer'
end
