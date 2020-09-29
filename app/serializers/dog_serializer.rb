class DogSerializer < ActiveModel::Serializer
 include Rails.application.routes.url_helpers 
  attributes :id, :name, :breed, :age, :temparament, :user_id
  has_many :comments
  has_many :likes
end
