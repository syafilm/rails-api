class Guest < ApplicationRecord
  has_one :reservation
  enum status: %i[waiting accepted rejected]
  validates_uniqueness_of :email
end
