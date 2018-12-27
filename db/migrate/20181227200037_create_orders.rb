class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :imei, limit: 15
      t.string :modelo
      t.decimal :valor_anual, precision: 5, scale:2
      t.integer :num_parcelas
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
