class PatientSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :date_of_birth, :role
  has_many :medical_historys
end
