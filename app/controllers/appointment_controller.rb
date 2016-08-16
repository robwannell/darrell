class AppointmentController < ApplicationController
 def new
     @appointment = Appointment.new
     @title = "Schedule an appointment"
     @description = "Schedule an appointment with Sacramento mayor-elect Darrell Steinberg"
   end

   def create
    
   
   
   
   params[:appointment].parse_time_select! :time
 
     @appointment = Appointment.new(params[:appointment])
   
     unless params[:appointment][:date].blank?
     @appointment.date = Date.strptime(params[:appointment][:date], "%m/%d/%Y")
    end
    
    
     if @appointment.valid?
       
      AppointmentMailer.appointment_email(@appointment.firstname, 
                                          @appointment.lastname,
                                          @appointment.email,
                                          @appointment.organization,
                                          @appointment.cellphone,
                                          @appointment.topic,
                                          @appointment.purpose,
                                          @appointment.time_requested,
                                          @appointment.date,
                                          @appointment.time,
                                          @appointment.location,
                                          @appointment.address,
                                          @appointment.attendees_number,
                                          @appointment.notable_attendees,
                                          @appointment.press,
                                          @appointment.background_info,
                                          @appointment.website
                                          ).deliver
      redirect_to root_path, notice: 'Thank you - your request has been sent!'
    else
      render :new
    end
     
   end
end


