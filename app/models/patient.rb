class Patient < User
    validates :gender, :blood_group, :date_of_birth, presence: true
    has_many :medical_historys
end
