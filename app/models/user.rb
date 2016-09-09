class User < ActiveRecord::Base
  has_many :hobbies, :through => :user_hobbies

  validates :email, presence:true, uniqueness:true
  validates :username, presence: true

  BCrypt::Engine.cost = 12
  has_secure_password
end
