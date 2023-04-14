class Order < ApplicationRecord
  has_many :order_details, dependent: :destroy, inverse_of: :order
  has_many :products, through: :order_details

  belongs_to :person

  accepts_nested_attributes_for :order_details, reject_if: :all_blank, allow_destroy: true

  validates :name, :person, :order_details, presence: true

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

  def purchased_products
    i = 0; item = ""
    products.each do |product|
      item += "#{products.pluck(:quantity)[i]} x #{product.name} \n"
      i += 1
    end
    return item
  end
end