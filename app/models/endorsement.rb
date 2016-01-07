class Endorsement < ActiveRecord::Base
  
  validates :firstname, presence: true, unless: "organization?"
  validates :lastname, presence: true, unless: "organization?"
  
  default_scope  {order 'rank ASC', 'lastname ASC', 'organization ASC'}
  
end
