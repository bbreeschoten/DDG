class Targetgroup < ActiveRecord::Base
  attr_accessible :description, :name, :abbreviation, :created_at, :updated_at 
  
  has_many :targetings
  has_many :activities, through: :targetings
end
