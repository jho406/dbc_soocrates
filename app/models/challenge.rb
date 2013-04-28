class Challenge < ActiveRecord::Base
  act_as_chirpable
  attr_accessible :title, :body
  has_many :challenge_units
  has_many :units, :through=>:challenge_units
end
