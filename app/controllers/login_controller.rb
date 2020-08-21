class LoginController < ApplicationController

    def create
      user = User.find_by(username: user_params[:username])
      if user && user.authenticate(user_params[:password])
        render json: {token: token(user.id), user: UserSerializer.new(user)}
      else
        render json: { errors: [ "User not found" ] }, status: :unprocessable_entity
      end 
    end

    def persist
      if decoded_token
        render json: logged_in_user
      end
    end

    def user_params
      params.permit(:username, :password)
    end
end
