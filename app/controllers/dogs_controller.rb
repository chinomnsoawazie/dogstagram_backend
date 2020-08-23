class DogsController < ApplicationController

  def create
    @dog = Dog.create!(dog_params)
    user_id = params[:user_id]
    user = Dog.find(user_id)
    if @dog.valid?
        userDogs = user.dogs.map{ |dog| DogSerializer.new(dog)}
        render json: { userDogs: userDogs }, status: :created
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
    params.permit(:id, :name, :breed, :user_id, :age, :temprament, :photo)
  end
end
