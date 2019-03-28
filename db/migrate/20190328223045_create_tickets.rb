class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.references :event, foreign_key: true
      t.references :category, foreign_key: true
      t.decimal :price
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
