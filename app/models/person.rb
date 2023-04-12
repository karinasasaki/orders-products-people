class Person < ApplicationRecord
  has_many :orders, dependent: :destroy

  has_many :products, through: :orders

  validates :name, presence: true, format: {with: /[a-zA-Z]/}

  def person_orders
    info = ""
    orders.each do |order|
      info << "<b>Código da compra:</b> #{order.id}\n"
      info << "<b>Nome do pedido:</b> #{order.name}\n"
      info << "<b>Criado em:</b> #{order.created_at.strftime("%d/%m/%Y %H:%M")}\n"
      info << "<b>Produtos comprados:</b> #{order.products.pluck(:name).join(", ")}\n"
      info << "<b>Valor total:</b> R$#{order.total_value}\n"
      info << "\n"
    end
    return info
  end
end