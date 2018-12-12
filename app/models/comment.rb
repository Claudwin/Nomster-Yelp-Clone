class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :place

    validates :comments, presence: true, length: { maximum: 140, minimum: 3 }
    validates :rating, presence: true, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 10 }
end
