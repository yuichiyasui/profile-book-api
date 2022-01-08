class User < ApplicationRecord
  VALID_EMAIL_REGEX = /[\w\-._]+@[\w\-._]+\.[A-Za-z]+/

  has_secure_password
  validates :email,
            uniqueness: true,
            format: { with: VALID_EMAIL_REGEX }
end
