class TemporaryUser < ApplicationRecord
  validates :email, uniqueness: true
  validates :uuid, uniqueness: true
end
