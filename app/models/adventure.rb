class Adventure < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :users, through: :comments
  validates :title, :description, :website_url, :image_url, presence: true
end
