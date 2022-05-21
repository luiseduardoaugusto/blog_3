class Article < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, uniqueness: true
  validates :body, presence: true, length: { minimum: 20 }
  has_many :comments
end
