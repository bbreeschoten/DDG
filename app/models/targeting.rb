class Targeting < ActiveRecord::Base
  belongs_to :targetgroup
  belongs_to :activity
end