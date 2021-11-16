class Category < ApplicationRecord
  has_many :hobby
  has_many :speciality

  validates :name, presence: true, uniqueness: true
end
