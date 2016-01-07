class Testamony < ActiveRecord::Base
  
  validates :name, presence: true
  validates :quote, presence: true
  
  
  
end
