class ContactMailer < ActionMailer::Base
  default from: 'notifier@steinberg4sac.com'
          
  
  
  default to: @recip.email

    def contact_email(name, email, body)
        @name = name
        @email = email
        @body = body

        mail(subject: 'Contact message', reply_to: email)
    end
end
