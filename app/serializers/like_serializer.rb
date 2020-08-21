class LikeSerializer < ActiveModel::Serializer
  attributes :id, :dog_id, :likerName, :likerHandle, :liker_user_id
end
