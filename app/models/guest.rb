class Guest < ApplicationRecord
  enum status: %i[waiting accepted rejected]
end
