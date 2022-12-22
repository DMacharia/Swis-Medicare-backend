class Api::V1::AuthController < ApplicationController
    def create
        @user = User.find_by(username: login_params[:username])
        if @user && @user.authenticate(login_params[:password])
            @token = encode_token( {user_id: @user.id})
            render json: {user: UserSerializer.new(@user), jwt:@token}, status: :accepted 
        else
            render json: {error: 'Invalid username or password' }, status: :unauthorized
    end
    
    private

    def login_params
        params.permit(:username, :password)
    end
end
