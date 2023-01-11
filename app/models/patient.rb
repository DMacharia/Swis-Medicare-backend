class Patient < User
    validates :gender, :blood_group, :date_of_birth, presence: true
    has_many :patient_histories, dependent: :destroy
end
