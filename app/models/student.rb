class Student < ApplicationRecord
  validates :name, :address,  presence: true
  has_one :book
end
