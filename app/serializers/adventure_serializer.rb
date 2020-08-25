class AdventureSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :website_url, :image_url, :likes, :complete
  belongs_to :user
  has_many :comments
  has_many :users, through: :comments
end
