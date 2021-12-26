class Book < ApplicationRecord
  scope :costly, -> { where("price > ?", 300) }
end
