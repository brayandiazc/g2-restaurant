class Menu < ApplicationRecord
  belongs_to :category
  belongs_to :user

  enum status: { proceso: 0, preparado: 1 }
end
