class Patient < User
    validates :date_of_birth, presence: true
    has_many :medical_historys
end
