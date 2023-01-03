class AdminSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :title, :role
end
