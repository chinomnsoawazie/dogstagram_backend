class UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def index
      users = User.all.with_attached_photo
      render json: users
  end

  def check_handle
    handle_to_check = User.find_by(handle: params[:handle])
    if handle_to_check
      render json: false
    else
      render json: true
    end
  end

  def api_keys
    firebaseAPI = ENV["FIREBASE_API_KEY"]
    myEmail = ENV["MY_EMAIL"]
    render json: {FIREBASE_API_KEY: firebaseAPI, myEmail: myEmail }
  end

  def show
    user_id = params[:id]
    user = User.find(user_id)
    render json: user
  end



  def create
    @user = User.new(user_params)
    @user.photo.attach(io: photo_io, filename: photo_name)
    
    unless @user.save
      puts @user.errors.inspect
      render json: { error: "Unable to create user" }, status: 422
    end

    @token = encode_token(user_id: @user.id)
    render json: { user: UserSerializer.new(@user), token: @token }, status: :created
  end


  def update
    user = User.find(params[:id])
    if user.update(user_params)
      token = encode_token(user_id: user.id)
      render json: { user: user, token: token }
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

  def photo_io
    decoded_photo = Base64.decode64(params[:photo])
    StringIO.new(decoded_photo)
  end

  def photo_name
    params[:file_name]
  end
end