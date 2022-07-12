class Menu < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_one_attached :image

  has_many :menu_saucers
  has_many :saucers, through: :menu_saucers

  enum status: { proceso: 0, preparado: 1 }
end
