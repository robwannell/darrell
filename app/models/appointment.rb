class Appointment 
  
  
  include ActiveModel::Model

  attr_accessor :firstname, :lastname, :organization, :cellphone, :email, :email_confirmation, :topic, :purpose, :speaking, :speech_topic, :speech_duration, :qa, :qa_duration, :time_requested, :time_requested_other, :date, :time, :location, :address, :attendees_number, :notable_attendees, :press, :background_info, :website

  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :cellphone, presence: true
  validates :speaking, presence: true
  validates :email, presence: true
  validates :email_confirmation, presence: true
    validates_confirmation_of :email, :message => "should match email"
    validates :date, presence: true
   
  
end



