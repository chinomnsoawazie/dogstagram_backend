class DogSerializer < ActiveModel::Serializer
 include Rails.application.routes.url_helpers 
  attributes :id, :name, :breed, :age, :temprament, :user_id, :photo_url
  has_many :comments
  has_many :likes

  def photo_url
    return rails_blob_url(object.photo)
  end 
end
