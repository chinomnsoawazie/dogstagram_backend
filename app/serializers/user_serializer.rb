class UserSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers 
  attributes :id, :name, :handle, :city, :state, :country, :photo_url
  has_many :dogs
  has_many :followers

  def photo_url
    return rails_blob_url(object.photo)
  end 
end
