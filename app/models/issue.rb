class Issue < ActiveRecord::Base
  has_attached_file :avatar, styles: { medium: "710x400#>", thumb: "300x150#" }, default_url: "issues/:style/missing.png"
    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
    
    extend FriendlyId
    friendly_id :title, use: :slugged
    
end
