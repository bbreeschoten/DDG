class Profile < ActiveRecord::Base
  attr_accessible :description, :name, :abbreviation, :created_at, :updated_at 
  
  has_many :profilings
  has_many :activities, through: :profilings 
end