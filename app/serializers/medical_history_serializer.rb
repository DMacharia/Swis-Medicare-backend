class MedicalHistorySerializer < ActiveModel::Serializer
  attributes :id, :patient_id, :condition, :treatment, :notes
end
