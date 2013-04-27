class Unit < ActiveRecord::Base
  # has_and_belongs_to_many :challenges, :through=>'ChallengeUnits'
  has_many :challenge_units
  has_many :challenges, :through=> :challenge_units
  attr_accessible :title

end
