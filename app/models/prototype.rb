class Prototype < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  validates :title, presence: true
  validates :catch_copy, presence: true
  validates :image, presence: true
  validates :concept, presence: true
  has_many :comments
end
