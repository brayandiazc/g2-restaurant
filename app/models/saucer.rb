class Saucer < ApplicationRecord
  # Relationships
  has_many :menu_saucers
  has_many :menus, through: :menu_saucers

  # validations
  validates :name, presence: true
  validates :available, inclusion: { in: [true, false] }
end
