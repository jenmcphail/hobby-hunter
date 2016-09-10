class User < ActiveRecord::Base
  has_many :hobbies, :through => :hobbies_users

  validates :email, presence:true, uniqueness:true
  validates :username, presence: true

  BCrypt::Engine.cost = 12
  has_secure_password
end
