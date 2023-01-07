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

    def profile
        render json: { user: PatientSerializer.new(current_user) }, status: :accepted
    end

    def show
        @patient = Patient.find(params[:id])
        render json: @patient
    end
    

    private
    
    def patient_params
       params.permit(:first_name, :second_name, :username, :email, :mobile_no, :gender, :address, :blood_group, :password, :date_of_birth, :role)
    end

    def render_not_found
        render json: {message: "Patient not found" }, status: :not_found
    end

end
