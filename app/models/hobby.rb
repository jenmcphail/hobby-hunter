class Hobby < ActiveRecord::Base
  has_many :hobbies, :through => :hobbies_users

  validates :title, :description, :video_url, presence: true
end
