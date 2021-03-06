class Issue < ActiveRecord::Base
  has_attached_file :avatar, styles: { medium: "710x473#", thumb: "300x100#" }, default_url: "news/:styles/missing.jpg"
    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
    
    extend FriendlyId
    friendly_id :title, use: :slugged
    
end
