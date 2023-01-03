class User < ApplicationRecord
  has_secure_password
  
  self.inheritance_column = :role

  validates :username, uniqueness: { case_sensitive: false }
end
