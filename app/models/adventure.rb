class Adventure < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :users, through: :comments
  validates :title, :description, :website_url, :image_url, presence: true
end
