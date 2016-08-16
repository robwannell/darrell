class SupportMailer < ActionMailer::Base
  default from: 'notifier@steinberg4sac.com'
  
  
    
    def appointment_email(firstname, email, phone, address, body, help, recip)
        @name = name
        @email = email
        @phone = phone
        @address = address
        @body = body
        @help = help

        mail(from: email, subject: 'Support request', reply_to: email, to: recip)
    end
end