class ContactController < ApplicationController
  def new
      @contact = Contact.new
      @title = "Contact Us"
      @description = "Contact the Darrell Steinberg for Sacramento Mayor 2016 campaign team"
    end

    def create
      @recip = MailRecipient.find(2)
      @contact = Contact.new(params[:contact])
      name = @contact.name
      email = @contact.email
      body = @contact.body
      recip = @recip.email
      if @contact.valid?
        ContactMailer.contact_email(name, email, body, recip).deliver
        redirect_to root_path, notice: 'Thank you - your message has been sent!'
      else
        render :new
      end
    end
     
end