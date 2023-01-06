# # # This file should contain all the record creation needed to seed the database with its default values.
# # # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# # #
# # # Examples:
# # #
# # #   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
# # #   Character.create(name: "Luke", movie: movies.first)
 


# puts("🌱Seeding data 🌱")
# puts("....................")
# puts("....................")

# puts("🌱seeding Users...")
# puts("")
# puts("")

# puts("🌱Seed admin...")
# # first_name, :second_name, :username, :email, :password, :title, :role
# admin = Admin.create!(first_name: 'Peter', second_name: 'Parker', email: 'peter@example.com', username: 'peterparker', password: 'password', title: 'Manager', address: '321 Main St')

# puts("🌱Seed doctors...")
# # first_name, :second_name, :username, :email, :reg_no, :mobile_no, :emergency_no, :address, :password, :speciality
# doc1 = Doctor.create!(first_name: 'John', second_name: 'Doe', email: 'john@example.com', username: 'johndoe', password: 'password', reg_no: '12345', mobile_no: '12345678', emergency_no: '98765432', address: '123 Main St', speciality: 'Pediatrics')
# doc2 = Doctor.create!(first_name: 'Alice', second_name: 'Johnson', email: 'alice@example.com', username: 'alicejohnson', password: 'password', reg_no: '45078', mobile_no: '11111111', emergency_no: '55555555', address: '456 Main St', speciality: 'Cardiology')
# doc3 = Doctor.create!(first_name: 'Michael', second_name: 'Smith', email: 'michael@example.com', username: 'michaelsmith', password: 'password', reg_no: '54321', mobile_no: '22222222', emergency_no: '22222222', address: '789 Main St', speciality: 'Surgery')
# doc4 = Doctor.create!(first_name: 'Samantha', second_name: 'Williams', email: 'samantha@example.com', username: 'samanthawilliams', password: 'password', reg_no: '98765', mobile_no: '33333333', emergency_no: '33333333', address: '321 Main St', speciality: 'Orthopedics')
# doc5 = Doctor.create!(first_name: 'David', second_name: 'Johnson', email: 'david@example.com', username: 'davidjohnson', password: 'password', reg_no: '45678', mobile_no: '44444444', emergency_no: '44444444', address: '654 Main St', speciality: 'Ophthalmology')

# puts("🌱Seed patients...")
# # (:first_name, :second_name, :username, :email, :mobile_no, :gender, :address, :blood_group, :password, :date_of_birth, :role)
# patient1 = Patient.create!(first_name: 'Bob', second_name: 'Williams', email: 'bob@example.com', username: 'bobwilliams', password: 'password', mobile_no: '123458678', gender: 'Male', address: '123 Main St', blood_group: 'O+', date_of_birth: '01/01/2000')
# patient2 = Patient.create!(first_name: 'Linda', second_name: 'Williams', email: 'linda@example.com', username: 'lindawilliams', password: 'password', mobile_no: '111111145', gender: 'Female', address: '456 Main St', blood_group: 'A+', date_of_birth: '01/01/1995')
# patient3 = Patient.create!(first_name: 'William', second_name: 'Davis', email: 'william@example.com', username: 'williamdavis', password: 'password', mobile_no: '222223422', gender: 'Male', address: '789 Main St', blood_group: 'B+', date_of_birth: '01/01/1990')
# patient4 = Patient.create!(first_name: 'Elizabeth', second_name: 'Smith', email: 'elizabeth@example.com', username: 'elizabethsmith', password: 'password', mobile_no: '555565555', gender: 'Female', address: '246 Main St', blood_group: 'B+', date_of_birth: '01/01/1975')
# patient5 = Patient.create!(first_name: 'Christopher', second_name: 'Williams', email: 'christopher@example.com', username: 'christopherwilliams', password: 'password', mobile_no: '66666666', gender: 'Male', address: '753 Main St', blood_group: 'O+', date_of_birth: '01/01/1970')
# # patient6 = Patient.create!(first_name: 'Sarah', second_name: 'Johnson', email: 'sarah@example.com', username: 'sarahjohnson', password: 'password', mobile_no: '77777777', gender: 'Female', address: '369 Main St', blood_group: 'A+', date_of_birth: '01/01/1965')
# # patient7 = Patient.create!(first_name: 'James', second_name: 'Smith', email: 'james@example.com', username: 'jamessmith', password: 'password', mobile_no: '88888888', gender: 'Male', address: '159 Main St', blood_group: 'B+', date_of_birth: '01/01/1960')

# puts("🌱Seed patients medical histories...")
# # Create medical histories for patients
# # :patient_id, :weight, :blood_pressure, :blood_sugar, :temperature, :pulse_rate, :test, :diagnosis, :medication, :notes
# PatientHistory.create!(patient_id: patient1.id, weight: 180, blood_pressure: '120/80', blood_sugar: '110', temperature: 98.6, pulse_rate: 80, test: 'X-ray', diagnosis: 'Flu', medication: 'Ibuprofen', notes: 'Patient has been experiencing fever and cough')
# PatientHistory.create!(patient_id: patient1.id, weight: 175, blood_pressure: '115/78', blood_sugar: '105', temperature: 99.1, pulse_rate: 82, test: 'Blood test', diagnosis: 'Anemia', medication: 'Iron supplements', notes: 'Patient has been feeling tired and short of breath')
# PatientHistory.create!(patient_id: patient2.id, weight: 130, blood_pressure: '110/75', blood_sugar: '100', temperature: 98.4, pulse_rate: 75, test: 'MRI', diagnosis: 'Migraine', medication: 'Ibuprofen', notes: 'Patient has been experiencing headache and nausea')
# PatientHistory.create!(patient_id: patient2.id, weight: 140, blood_pressure: '115/80', blood_sugar: '110', temperature: 98.9, pulse_rate: 77, test: 'EKG', diagnosis: 'Heart palpitations', medication: 'Atenolol', notes: 'Patient has been feeling chest pain and shortness of breath')
# PatientHistory.create!(patient_id: patient3.id, weight: 160, blood_pressure: '125/85', blood_sugar: '115', temperature: 99.3, pulse_rate: 79, test: 'Ultrasound', diagnosis: 'Kidney stones', medication: 'Pain medication', notes: 'Patient has been experiencing back pain and frequent urination')
# PatientHistory.create!(patient_id: patient3.id, weight: 155, blood_pressure: '120/82', blood_sugar: '110', temperature: 98.7, pulse_rate: 81, test: 'CT scan', diagnosis: 'Appendicitis', medication: 'Antibiotics', notes: 'Patient has been experiencing abdominal pain and vomiting')
# PatientHistory.create!(patient_id: patient4.id, weight: 145, blood_pressure: '115/78', blood_sugar: '105', temperature: 98.5, pulse_rate: 76, test: 'Sputum culture', diagnosis: 'Pneumonia', medication: 'Antibiotics', notes: 'Patient has been experiencing cough and shortness of breath')
# PatientHistory.create!(patient_id: patient4.id, weight: 150, blood_pressure: '120/80', blood_sugar: '110', temperature: 98.8, pulse_rate: 78, test: 'X-ray', diagnosis: 'Bronchitis', medication: 'Antibiotics', notes: 'Patient has been experiencing cough and fatigue')
# PatientHistory.create!(patient_id: patient5.id, weight: 170, blood_pressure: '125/85', blood_sugar: '115', temperature: 99.1, pulse_rate: 80, test: 'Blood test', diagnosis: 'High cholesterol', medication: 'Atorvastatin', notes: 'Patient has a family history of heart disease')
# PatientHistory.create!(patient_id: patient5.id, weight: 165, blood_pressure: '120/82', blood_sugar: '110', temperature: 98.9, pulse_rate: 82, test: 'EKG', diagnosis: 'Arrhythmia', medication: 'Beta blockers', notes: 'Patient has been experiencing palpitations and dizziness')
# PatientHistory.create!(patient_id: patient5.id, weight: 160, blood_pressure: '115/78', blood_sugar: '105', temperature: 98.7, pulse_rate: 84, test: 'Ultrasound', diagnosis: 'Gallstones', medication: 'Pain medication', notes: 'Patient has been experiencing abdominal pain and nausea')
# PatientHistory.create!(patient_id: patient5.id, weight: 155, blood_pressure: '110/75', blood_sugar: '100', temperature: 98.5, pulse_rate: 86, test: 'CT scan', diagnosis: 'Pancreatitis', medication: 'Antibiotics', notes: 'Patient has been experiencing abdominal pain and vomiting')
# PatientHistory.create!(patient_id: patient5.id, weight: 150, blood_pressure: '105/70', blood_sugar: '95', temperature: 98.3, pulse_rate: 88, test: 'MRI', diagnosis: 'Herniated disc', medication: 'Muscle relaxants', notes: 'Patient has been experiencing back pain and numbness in limbs')




# puts("....................")
# puts("....................")
# puts("🌱Seeding done! 🌱")

