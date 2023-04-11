class Order < ApplicationRecord
  has_many :order_details, dependent: :destroy, inverse_of: :order
  has_many :products, through: :order_details
  accepts_nested_attributes_for :order_details, reject_if: :all_blank, allow_destroy: true
  
  belongs_to :person

  validates :name, :person, presence: true

  def value
    @total_value
  end
end