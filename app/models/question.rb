class Question < ActiveRecord::Base
  belongs_to :user
  attr_accessible :body

  def resolve!
    self.update_attribute(:resolved, true)
  end

end
