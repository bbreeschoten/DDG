class Profiling < ActiveRecord::Base
  belongs_to :profile
  belongs_to :activity
end