class User < ApplicationRecord
  authenticates_with_sorcery!

  validates :name, presence: true
  validates :email, presence: true
  validates :physical_gage, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 100}
  validates :experience_gage, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 50}

  enum position: { "ヨワヨワメンタル新入社員": 0, "そこそこメンタル中間管理職": 1, "つよつよメンタル幹部社員": 2 }

  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }

  validates :email, uniqueness: { case_sensitive: true }

  validates :reset_password_token, uniqueness: { case_sensitive: true }, allow_nil: true

  has_many :question_results

end

