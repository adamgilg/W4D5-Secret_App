class User < ActiveRecord::Base

  attr_accessible :name, :email, :password, :password_confirmation
  validates :name, :uniqueness => true, :presence => true
  validates :email, :uniqueness => true, :presence => true

  has_secure_password


end
