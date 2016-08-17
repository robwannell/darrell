class AppointmentMailer < ActionMailer::Base
  default from: 'notifier@steinberg4sac.com'
  
  
    
  def appointment_email(firstname, lastname, email, organization, cellphone, topic, purpose, time_requested, time_requested_other, date, time, location, address, attendees_number, notable_attendees, press, background_info, website)
      @firstname = firstname
      @lastname = lastname
      @email = email
      @organization = organization
      @cellphone = cellphone
      @topic = topic
      @purpose = purpose
      @time_requested = time_requested
      @time_requested_other = time_requested_other
      @date = date
      @time = time
      @location = location
      @address = address
      @attendees_number = attendees_number
      @notable_attendees = notable_attendees
      @press = press
      @background_info = background_info
      @website = website
      
        mail(from: email, subject: 'Appointment request', reply_to: email, to: "jaycob@steinberg4sac.com")
    end
end


