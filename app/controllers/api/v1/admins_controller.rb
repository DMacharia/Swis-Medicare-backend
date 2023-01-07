class Api::V1::AdminsController < Api::V1::UsersController
    def create
        @admin = Admin.create(admin_params)
        if @admin.valid?
            @token = encode_token({admin_id: @admin.id})
            render json: { admin: AdminSerializer.new(@admin), jwt: @token}, status: :created
        else
            render json: { error: 'failed to create admin' }, status: :unprocessable_entity
        end
    end

    def index
        @admins = Admin.all
        render json: @admins, status: :ok
    end

    def profile
        render json: { user: AdminSerializer.new(current_user) }, status: :accepted
    end

    private

    def admin_params
       params.permit(:first_name, :second_name, :username, :email, :mobile_no, :address, :password, :title, :role)
    end

    def render_not_found
        render json: {message: "Admin not found" }, status: :not_found
    end
end
