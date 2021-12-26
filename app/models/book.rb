class Book < ApplicationRecord
  scope :costly, -> { where("price > ?", 300) }
  scope :written_about, -> (theme) { where("name like ?", "%#{theme}%") }
end
