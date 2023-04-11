class Product < ApplicationRecord
  has_many :order_details, dependent: :destroy
  has_many :orders, through: :order_details

  validates :name, :price, presence: true
  validates :price, numericality: { greater_than: 0 }
end