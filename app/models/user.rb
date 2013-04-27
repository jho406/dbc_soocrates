class User < ActiveRecord::Base

  attr_accessible :email, :password, :password_confirmation
  validates :email, :password, :password_confirmation, :presence=>true

  has_many :questions
  has_secure_password
end
