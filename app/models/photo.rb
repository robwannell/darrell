class Photo < ActiveRecord::Base
  
  
  has_attached_file :avatar, styles: { medium: "710x400", thumb: "150x100" }
  
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  validates :avatar, presence: true
   
   
  
  
   default_scope  {order 'created_at DESC'}
   
   
end
