class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }

    has_many :dogs
    has_many :followers
    has_one_attached :photo
end
