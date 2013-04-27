class Phase < ActiveRecord::Base
  attr_accessible :title
  has_many :units
end
