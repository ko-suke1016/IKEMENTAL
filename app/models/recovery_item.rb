class RecoveryItem < ApplicationRecord
    validates :item_name, presence: true
    validates :item_comentary, presence: true
    validates :item_score, presence: true

    has_one_attached :image_item
end
