class ChallengeUnit < ActiveRecord::Base
  belongs_to :phase
  belongs_to :challenge
end
