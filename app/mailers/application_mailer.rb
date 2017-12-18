class ApplicationMailer < ActionMailer::Base
   #include EmailHelper
   add_template_helper(EmailHelper)

  default from:     "service ticket"
         # bcc:      "sample+sent@gmail.com",
        #  reply_to: "sample+reply@gmail.com"
  layout 'mailer'
end
