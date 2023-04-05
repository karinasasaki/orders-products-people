class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :name, default: "Compras do(a) "
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end
