class Challenge < ActiveRecord::Base
  attr_accessible :title, :body
  has_many :challenge_units
  has_many :units, :through=>:challenge_units
end
