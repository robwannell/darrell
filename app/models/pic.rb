class Pic < ActiveRecord::Base
  has_attached_file :avatar, styles: { medium: "900x700", thumb: "150x150#" }
  
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  validates :avatar, presence: true
   
   validates_attachment_size :avatar, :less_than => 2.megabytes
  
  
  
end
