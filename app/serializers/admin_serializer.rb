class AdminSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :second_name, :username, :email, :address, :password, :title, :role
end
