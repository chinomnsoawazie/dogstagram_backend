class LoginController < ApplicationController
    skip_before_action :authorized
    def create
      user = User.find_by(handle: params[:handle])
      if user && user.authenticate(params[:password])
        # byebug
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
      params.permit(:handle, :password)
    end
end
