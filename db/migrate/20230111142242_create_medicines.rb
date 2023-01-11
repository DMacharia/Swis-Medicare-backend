class CreateMedicines < ActiveRecord::Migration[7.0]
  def change
    create_table :medicines do |t|
      t.string :name
      t.string :dosage
      t.string :manufacturer
      t.integer :quantity
      t.date :expiry_date
      t.decimal :price

      t.timestamps
    end
  end
end
