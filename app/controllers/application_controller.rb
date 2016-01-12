class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_filter :grab_news
  
  def grab_news
    @newsband = News.first
    @eventband = Event.where('start_time >= ?', Date.today).order("start_time ASC").first
  
  end
  
  
  def current_user
     @current_user ||= User.find(session[:user_id]) if session[:user_id]
   end
   helper_method :current_user

   def authorize
     redirect_to '/login' unless current_user
   end
   
   private

       def set_time_zone
         Time.zone = current_user.time_zone
       end
   
   
end
