class CreateMedicalHistorys < ActiveRecord::Migration[7.0]
  def change
    create_table :medical_historys do |t|
      t.integer :patient_id
      t.string :condition
      t.string :treatment
      t.text :notes

      t.timestamps
    end
  end
end
