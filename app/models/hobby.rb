class Hobby < ActiveRecord::Base
  has_and_belongs_to_many :users

  validates :title, :description, :video_url, presence: true
end
