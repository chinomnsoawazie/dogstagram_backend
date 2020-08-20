class LikeSerializer < ActiveModel::Serializer
  attributes :id, :likerName, :liker_user_id
end
