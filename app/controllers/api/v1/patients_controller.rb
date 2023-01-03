class Api::V1::PatientsController < Api::V1::UsersController
    def create
        @patient = Patient.create(patient_params)
        if @patient.valid?
            @token = encode_token({patient_id: @patient.id})
            render json: { patient: PatientSerializer.new(@patient), jwt: @token}, status: :created
        else
            render json: { error: 'failed to create patient' }, status: :unprocessable_entity
        end
    end

    def index
        @patients = Patient.all
        render json: @patients, status: :ok
    end

    private
    def patient_params
       params.permit(:username, :password, :date_of_birth, :role)
    end
end
