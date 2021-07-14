class User < ApplicationRecord
  authenticates_with_sorcery!

  validates :name, presence: true
  validates :physical_gage, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 100}
  validates :experience_gage, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 35}

  enum position: { "ヨワヨワメンタル新入社員": 0, "そこそこメンタル中間管理職": 1, "つよつよメンタル幹部社員": 2 }
  validates :position, presence: true

  validates :password, length: { minimum: 6 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }

  before_save { email.downcase! }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, format: {with: VALID_EMAIL_REGEX}
  validates :email, presence: true
  validates :email, uniqueness: { case_sensitive: false }

  validates :reset_password_token, uniqueness: { case_sensitive: true }, allow_nil: true

  has_many :question_results

end

