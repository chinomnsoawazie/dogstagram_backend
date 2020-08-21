class LikeController < ApplicationController

    def create
        like = Like.create(like_params)
        dog_id = params[:dog_id]
        dog = Dog.find(dog_id)
        if like.valid?
            dogLikes = dog.likes
            render json: {dogComments: dogLikes}
        else 
            render json: {error: 'Note not created'}, status: :unprocessable_entity
        end
    end

    def destroy
        Like.destroy(params[:id])
        dog_id = params[:dog_id]
        dog = Dog.find(dog_id)
        dogLikes = dog.likes
        render json: {dogComments: dogLikes}
    end

    private
    def like_params
        params.permit(:id, :likerName, :likerHanndle, :dog_id, :liker_user_id)
    end
end
