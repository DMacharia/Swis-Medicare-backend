class Api::V1::UsersController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

    def create
        @user = User.create(user_params)
        if @user.valid?
            @token = encode_token({user_id: @user.id})
            render json: { user: UserSerializer.new(@user), jwt: @token}, status: :created
        end
    end

    private
    def user_params
        params.permit(:username, :password)
    end

    def render_unprocessable_entity
        render json: {error: "failed to create user"}, status: :unprocessable_entity
    end
end
