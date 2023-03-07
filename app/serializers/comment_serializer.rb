class CommentSerializer < ActiveModel::Serializer
  attributes :id, :comment, :user_id
  has_one :user
end
