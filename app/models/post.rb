class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :user

  validates :title, presence: true
  validates :description, presence: true
  validates :user_id, presence: true
end
