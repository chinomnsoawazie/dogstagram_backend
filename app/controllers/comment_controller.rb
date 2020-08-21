class CommentController < ApplicationController
    
    def create
        comment = Comment.create(comment_params)
        dog_id = params[:dog_id]
        dog = Dog.find(dog_id)
        if comment.valid?
            dogComments = dog.comments
            render json: {dogComments: dogComments}
        else 
            render json: {error: 'Note not created'}, status: :unprocessable_entity
        end
    end

    def destroy
        Comment.destroy(params[:id])
        dog_id = params[:dog_id]
        dog = Dog.find(dog_id)
        dogComments = dog.comments
        render json: {dogComments: dogComments}
    end

    private
    def comment_params
        params.permit(:id, :handle, :text, :dog_id, :commenter_user_id)
    end
end
