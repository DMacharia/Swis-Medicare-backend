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

    private
    def admin_params
       params.permit(:first_name, :second_name, :username, :email, :password, :title, :role)
    end
end
