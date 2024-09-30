class Recipe < ApplicationRecord
  has_many :bookmarks

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :rating, inclusion: { in: (0..10) }
  # another way for the rating:
  # validates :rating, numercality { greater than... check notes}
end
