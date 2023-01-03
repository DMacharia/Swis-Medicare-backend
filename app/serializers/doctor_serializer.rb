class DoctorSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :speciality, :role
end
