class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :adventure
  validates :text, presence: true
end
