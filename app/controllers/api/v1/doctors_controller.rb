class Api::V1::DoctorsController < Api::V1::UsersController
    def create
        @doctor = Doctor.create(doctor_params)
        if @doctor.valid?
            @token = encode_token({doctor_id: @doctor.id})
            render json: { doctor: DoctorSerializer.new(@doctor), jwt: @token}, status: :created
        else
            render json: { error: 'failed to create doctor' }, status: :unprocessable_entity
        end
    end

    def index
        @doctors = Doctor.all
        render json: @doctors, status: :ok
    end

    private
    def doctor_params
       params.permit(:first_name, :second_name, :username, :email, :reg_no, :mobile_no, :emergency_no, :address, :password, :speciality, :role)
    end
end
