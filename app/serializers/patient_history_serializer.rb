class PatientHistorySerializer < ActiveModel::Serializer
    attributes :id, :patient_id, :weight, :blood_pressure, :blood_sugar, :temperature, :pulse_rate, :test, :diagnosis, :medication, :notes
    has_many :patient_histories
end
