class Personal < ActiveRecord::Base
  include RankedModel
    ranks :row_order
    
  has_attached_file :avatar, styles: { medium: "400x400", thumb: "150x100#" }, default_url: "personals/:styles/missing.jpg"
    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  
   validates :name, presence: true
   validates :description, presence: true
   validates :content, presence: true
   
end
