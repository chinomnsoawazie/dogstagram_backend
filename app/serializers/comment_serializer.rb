class CommentSerializer < ActiveModel::Serializer
  attributes :id, :username, :text, :commenter_user_id
end
