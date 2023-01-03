class Patient < User
    validates :date_of_birth, presence: true
end
