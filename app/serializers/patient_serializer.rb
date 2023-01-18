class PatientSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :second_name, :username, :email, :mobile_no, :gender, :address, :blood_group, :password, :date_of_birth, :role
  has_many :patient_histories
end
