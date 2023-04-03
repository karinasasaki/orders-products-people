class Order < ApplicationRecord
  belongs_to :person
  has_many :products
end