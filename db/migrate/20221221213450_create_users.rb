class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :second_name
      t.string :username
      t.string :email
      t.string :reg_no
      t.integer :mobile_no
      t.integer :emergency_no
      t.string :address
      t.string :gender
      t.string :blood_group
      t.string :password_digest
      t.string :title
      t.string :speciality
      t.date :date_of_birth
      t.string :role

      t.timestamps
    end
  end
end
