class Post < ApplicationRecord
  validates :body, presence: true,    length: { maximum: 50 }     
  validates :one, presence: true,    length: { maximum: 25 }     
  validates :two, presence: true,    length: { maximum: 25 }     
  has_many :votes, dependent: :destroy
  belongs_to :user
  has_many :comments, dependent: :destroy
end
