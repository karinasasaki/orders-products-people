class AddPersonIdToOrders < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :person, foreign_key: true
  end
end
