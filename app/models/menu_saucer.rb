class MenuSaucer < ApplicationRecord
  # Relationships
  belongs_to :menu
  belongs_to :saucer

  # Validations
  validates :menu, :saucer, presence: true
end
