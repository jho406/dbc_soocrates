class User < ActiveRecord::Base

  attr_accessible :email, :password, :password_confirmation
  validates :email, :password, :password_confirmation, :presence=>true

  has_many :questions
  has_many :created_challenges, :class_name=>'Challenge'
  belongs_to :cohort
  has_secure_password
end
