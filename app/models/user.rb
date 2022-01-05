class User < ApplicationRecord
  VALID_EMAIL_REGEX = /[\w\-._]+@[\w\-._]+\.[A-Za-z]+/
  VALID_PASSWORD_REGEX = /((?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])|(?=.*[a-z])(?=.*[A-Z])(?=.*[!@_#¥=?;:])|(?=.*[A-Z])(?=.*[0-9])(?=.*[!@_#¥=?;:])|(?=.*[a-z])(?=.*[0-9])(?=.*[!@_#¥=?;:]))/

  has_secure_password
  validates :email,
            uniqueness: true,
            format: { with: VALID_EMAIL_REGEX }
  validates :password,
            presence: true,
            length: { minimum: 8 },
            format: { with: VALID_PASSWORD_REGEX }
end
