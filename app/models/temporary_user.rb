class TemporaryUser < ApplicationRecord
  has_secure_password
  validates :email, uniqueness: true, format: { with: /[\w\-._]+@[\w\-._]+\.[A-Za-z]+/ }
  validates :password, presence: true, length: { minimum: 8 },
                       format: { with: /((?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])|(?=.*[a-z])(?=.*[A-Z])(?=.*[!@_#¥=?;:])|(?=.*[A-Z])(?=.*[0-9])(?=.*[!@_#¥=?;:])|(?=.*[a-z])(?=.*[0-9])(?=.*[!@_#¥=?;:]))/ }
  validates :uuid, uniqueness: true
end
