class UserController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def index
      users = User.all.with_attached_photo
      render json: users
  end

  def check_handle
    handle_to_check = User.find_by(handle: params[:handle])
    if handle_to_check
      render json: 'handle not available'
    else
      render json: 'handle available'
    end
  end

  def api_keys
    firebaseAPI = ENV["FIREBASE_API_KEY"]
    myEmail = ENV["MY_EMAIL"]
    render json: {FIREBASE_API_KEY: fireBaseAPI, myEmail: myEmail }
  end

  def show
    user_id = params[:id]
    user = User.find(user_id)
    render json: user
  end

  def create
    @user = User.create!(user_params)
    if @user.valid?
        @token = encode_token(user_id: @user.id)
        render json: { user: UserSerializer.new(@user), token: @token }, status: :created
      else
        render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end


  def update
    user = User.find(params[:id])
    if user.update(user_params)
      token = encode_token(user_id: user.id)
      render json: { user: UserSerializer.new(user), token: token }
    else
      render json: user.errors, status: :unprocessable_entity
    end
  end
  
  def destroy
    User.destroy(params[:id])
  end


  private
  def user_params
    params.permit(:id, :name, :handle, :city, :state, :country, :password, :photo)
  end
end