class PatientHistory < ApplicationRecord
    validates :patient_id, :weight, :blood_pressure, :blood_sugar, :temperature, :pulse_rate, :test, :diagnosis, :medication, :notes, presence: true  
    belongs_to :patient
    # class_name: 'Patient', foreign_key: :user_id
end
