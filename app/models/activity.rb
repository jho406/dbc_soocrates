class Activity < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :body, :type
  validates :body, :type, :presence=>true
end
