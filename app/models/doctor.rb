class Doctor < User
   validates :reg_no, :emergency_no, :speciality, presence: true
end
