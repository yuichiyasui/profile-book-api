class Category < ApplicationRecord
  has_many :hobby

  validates :name, presence: true
end
