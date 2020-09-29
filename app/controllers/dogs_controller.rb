class DogsController < ApplicationController

  def create
    @dog = Dog.create!(dog_params)
    user_id = params[:user_id]
    user = User.find(user_id)
    # byebug
    if @dog.valid?
        render json: {token: token(user.id), user: UserSerializer.new(user)}, status: :created
      else
        render json: { error: 'failed to create dog' }, status: :not_acceptable
    end
  end


  def update
    dog = Dog.find(params[:id])
    if dog.update(dog_params)
      render json: { dog: DogSerializer.new(dog)}
    else
      render json: dog.errors, status: :unprocessable_entity
    end
  end
  
  def destroy
    Dog.destroy(params[:id])
    user_id = params[:user_id]
    user = User.find(user_id)
    userDogs = user.dogs.with_attached_photo
    render json: {userDogs: userDogs}
  end


  private
  def dog_params
    params.permit(:id, :name, :breed, :user_id, :age, :temparament)
  end
end
