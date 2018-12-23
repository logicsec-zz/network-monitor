class Device < ActiveRecord::Base
  validates_presence_of :community, :frequency, :ip, :name
  validates_numericality_of :frequency, :greather_than => 1
end
