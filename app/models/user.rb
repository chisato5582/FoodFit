class User < ApplicationRecord
  authenticates_with_sorcery!
  enum role: { general: 0, admin: 1 }

  has_many :results, dependent: :destroy
  belongs_to :rank, optional: true 

  validates :password, length: { minimum: 4 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }

  validates :email, uniqueness: true
  validates :email, presence: true
  validates :name, presence: true, length: { minimum: 2 }

  validates :reset_password_token, uniqueness: true, allow_nil: true
end
