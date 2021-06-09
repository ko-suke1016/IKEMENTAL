class Inquiry < ApplicationRecord
  validates :category, presence: true
  validates :message, presence: true, length: { maximum: 4000 }

  enum category: { bug: 0, request: 1, other: 2}
end
