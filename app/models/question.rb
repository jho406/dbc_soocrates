class Question < ActiveRecord::Base
  act_as_chirpable
  belongs_to :user
  attr_accessible :body

  def resolve!
    self.update_attribute(:resolved, true)
  end

end
