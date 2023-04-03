class Product < ApplicationRecord
  #belongs_to :order
  delegate :person, to: :order
end
