class Order < ApplicationRecord
  has_many :order_details, dependent: :destroy, inverse_of: :order
  has_many :products, through: :order_details
  accepts_nested_attributes_for :order_details, reject_if: :all_blank, allow_destroy: true
  
  belongs_to :person

  validates :name, :person, presence: true
  validates_associated :products
  def total_value
      prices = products.pluck(:price)
      quantities = products.pluck(:quantity)
      i = 0; total_value = 0
      until i == (prices.length)
        total_value += (prices[i]*quantities[i])
        i += 1
      end
      return total_value
  end
end