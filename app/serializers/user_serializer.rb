class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :city, :state
  has_many :adventures
  has_many :comments
end
