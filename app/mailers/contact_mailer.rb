class ContactMailer < ActionMailer::Base
  default from: 'notifier@steinberg4sac.com'
          
 
  
  

  def contact_email(name, email, body, recip)
      @name = name
      @email = email
      @body = body
      
      mail(subject: 'Contact message', reply_to: email, to: recip)
  end
end


