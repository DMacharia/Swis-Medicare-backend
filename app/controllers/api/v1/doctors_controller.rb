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

    def show
        @doctors = Doctor.find(params[:id])
        render json: @doctors, serializer: DoctorSerializer, status: :ok
    end

    def profile
        render json: { user: DoctorSerializer.new(current_user) }, status: :accepted
    end


      #PATCH   /doctors/:id
    def update
        @doctor = find_doctor
            @doctor.update(doctor_params)
            render json: @doctor, status: :ok
    end

    #DELETE /@doctors/:id
    def destroy
        #find & destroy
        @doctor = find_doctor
            @doctor.destroy
            head :no_content
    end

    private
    def doctor_params
       params.permit(:first_name, :second_name, :username, :email, :reg_no, :mobile_no, :emergency_no, :address, :password, :speciality, :role)
    end

    def render_not_found
        render json: {message: "Doctor not found" }, status: :not_found
    end

    def find_doctor
        Doctor.find(params[:id])
    end
end
