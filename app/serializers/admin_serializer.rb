class AdminSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :second_name, :username, :email, :mobile_no, :address, :password, :title, :role
end
