class Post < ApplicationRecord
    has_many :comments, dependent: :destroy
    paginates_per 6
    has_one_attached :image
end
