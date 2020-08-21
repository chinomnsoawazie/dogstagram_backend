class CommentSerializer < ActiveModel::Serializer
  attributes :id, :dog_id, :handle, :text, :commenter_user_id
end
