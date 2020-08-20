class UserController < ApplicationController


    def index
        users = User.all
        render json: users
    end

     def show
      user_id = params[:id]
          user = User.find(user_id)
          render json: user
       
    end

    def create
      @user = User.create!(user_params)
      if @user.valid?


          render json: { user: @user }, status: :created
        else
          render json: { error: 'failed to create user' }, status: :not_acceptable
      end
    end


     private
    def user_params
      params.permit(:id, :name, :handle, :city, :state, :country, :photo)
    end


end
