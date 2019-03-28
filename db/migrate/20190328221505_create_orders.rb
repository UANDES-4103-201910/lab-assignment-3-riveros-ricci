class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.decimal10 :total_paid
      t.decimal2 :total_paid

      t.timestamps
    end
  end
end
