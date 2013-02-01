class User < ActiveRecord::Base

  attr_accessible :name, :email, :password, :password_confirmation
  validates :name, :uniqueness => true, :presence => true
  validates :email, :uniqueness => true, :presence => true
  validates_format_of :email, :with => %r\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/, :on => :create
  validates :password, :length => { :minimum 5, 
            :too_short => "must have at least 5 letters"}
  has_secure_password


end
