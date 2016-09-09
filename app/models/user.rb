class User < ActiveRecord::Base
  has_and_belongs_to_many :hobbies

  validates :email, presence:true, uniqueness:true
  validates :username, presence: true

  BCrypt::Engine.cost = 12
  has_secure_password
end
