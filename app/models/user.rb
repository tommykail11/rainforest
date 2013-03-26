class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation

	has_secure_password

  validates :name, :presence => true
  validates :email, :presence => true, :uniqueness => true
	validates_presence_of :password, :password_confirmation, :on => :create

	has_many :reviews
end