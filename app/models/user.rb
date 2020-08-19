class User < ApplicationRecord
    has_many :dogs
    has_one_attached :photo
end
