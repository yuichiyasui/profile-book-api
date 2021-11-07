class Member < ApplicationRecord
  belongs_to :home_prefecture, class_name: 'Prefecture'
  belongs_to :residence_prefecture, class_name: 'Prefecture'
  has_many :member_hobbies
  has_many :hobbies, through: :member_hobbies
end
