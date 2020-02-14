class Book < ApplicationRecord
  validates :bookname, :authorname, :description, presence: true
  belongs_to :student
end
