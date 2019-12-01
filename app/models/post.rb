class Post < ApplicationRecord
    has_many :comments, dependent: :destroy
    paginates_per 6
    has_one_attached :image
    validates :content, presence: true
    validates :categories, presence: true
    validates :image, presence: true
    validates :tittle, presence: true
    belongs_to :user

    
end
