class PatientSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :date_of_birth, :role
end
