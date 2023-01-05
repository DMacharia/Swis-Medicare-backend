class User < ApplicationRecord
  has_secure_password
  
  self.inheritance_column = :role
  validates :first_name, :second_name, :address, presence: true  
  validates :username, :email, :mobile_no, uniqueness: { case_sensitive: false }
end