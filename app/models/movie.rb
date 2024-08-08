class Movie < ApplicationRecord
  has_many :bookmarks
  # before_destroy :check_for_orders

  validates :title, presence: true
  validates :overview, presence: true

  # private

#   def check_for_orders
#     if movies.bookmarks.positive?
#       errors.add_to_base("cannot delete movie while bookmarks exist")
#       false
#     end
#   end
end
