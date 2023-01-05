class DoctorSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :second_name, :username, :email, :reg_no, :mobile_no, :emergency_no, :address, :password, :speciality, :role
end
