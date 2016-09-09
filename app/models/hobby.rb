class Hobby < ActiveRecord::Base
  has_many :users, :through => :user_hobbies

  validates :title, :description, :video_url, presence: true
end
