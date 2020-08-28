class CommentSerializer < ActiveModel::Serializer
  attributes :id, :text, :adventure_id, :user_id
  belongs_to :user
  belongs_to :adventure
end
