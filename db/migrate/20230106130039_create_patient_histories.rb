class CreatePatientHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :patient_histories do |t|
        t.integer :patient_id #patient id added manually to show relations with medical history
        t.integer :weight
        t.string :blood_pressure
        t.string :blood_sugar
        t.integer :temperature
        t.integer :pulse_rate
        t.string :test  
        t.text :diagnosis
        t.text :medication
        t.text :notes

      t.timestamps
    end
  end
end
