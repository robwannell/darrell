class ContactController < ApplicationController
  def new
      @contact = Contact.new
    end

    def create
      @contact = Contact.new(params[:contact])
      name = @contact.name
      email = @contact.email
      body = @contact.body
      if @contact.valid?
        ContactMailer.contact_email(name, email, body).deliver
        redirect_to root_path, notice: 'Thank you - your message has been sent!'
      else
        render :new
      end
    end
    
     
end