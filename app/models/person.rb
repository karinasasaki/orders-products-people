class Person < ApplicationRecord
  has_many :orders, dependent: :destroy

  has_many :products, through: :orders

  validates :name, presence: true, format: {with: /[a-zA-Z]/}
end