class Post < ActiveRecord::Base
  belongs_to :blog
  belongs_to :user
  has_many :messages

  validates :content, presence: true
  validates :title, length: { minimum: 2 }
end
