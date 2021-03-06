class SupportController < ApplicationController
  def new
    @title = "Support Darrell"
    @description = "Support Darrell Steinberg for Sacrmaneto Mayor, use this form to let us know how you can help"
    @page = Page.find(3)
    
    @support = Support.new
    
    
    @help = ['Add my name as an endorser', 'Host a "Meet-&-Greet" for Darrell', 'Make phone calls for Darrell','Walk precincts with Darrell', 'Display and/or deliver a lawn sign for Darrell', 'Help Get-Out-the-Vote', 'Share a personal story about why I\'m voting for Darrell', 'Be a precinct captain for my neighborhood', 'Join the ironing board brigade to table in public places', 'Donate my skills another way (use comment box)']
  end
  

  def create
    @support = Support.new(params[:support])
    @recip = MailRecipient.find(1)
    name = @support.name
    email = @support.email
    phone = @support.phone
    address = @support.address
    body = @support.comments
    @help = params[:help]
    recip = @recip.email
    
    if @support.valid?
      SupportMailer.support_email(name, email, phone, address, body, @help, recip).deliver
      
      redirect_to root_path, notice: 'Thank you - your message has been sent!'
    else
      @help = ['Add my name as an endorser', 'Host a "Meet-&-Greet" for Darrell', 'Make phone calls for Darrell','Walk precincts with Darrell', 'Display and/or deliver a lawn sign for Darrell', 'Help Get-Out-the-Vote', 'Share a personal story about why I\'m voting for Darrell', 'Be a precinct captain for my neighborhood', 'Join the ironing board brigade to table in public places', 'Donate my skills another way (use comment box)']
      render :new
    end
  end
  
end