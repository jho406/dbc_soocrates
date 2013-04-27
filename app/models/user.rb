class User < ActiveRecord::Base
  validates :email, :password, :password_confirmation, :presence=>true

  has_many :activities
  has_secure_password

  attr_accessible :email, :password, :password_confirmation

end
