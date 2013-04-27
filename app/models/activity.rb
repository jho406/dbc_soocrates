class Activity < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :body, :category
  validates :body, :category, :presence=>true
  validates :category, :inclusion=>{:in=>%w(question post)}

  belongs_to :user
end
