class FollowerController < ApplicationController

    def create
        follow = Follower.create(follow_params)
        handleDoingTheFollwing = params[:handle]
        user = User.find_by(handle: handleDoingTheFollowing) 
        if follow.valid?
            followsOfTheFollowingUserHandle = Follower.all.select{ |m| m.handle = handleDoingTheFollowing}
            #next line of code is to ensure if someone else follows the user doing this following
            #while they were doing the following, the response after the user doing this following follows will
            #reflect that new number of followers this user doing the following now has
            followersOfThisUserDoingTheFolloing = user.followers
            render json: {followsOfThisFollower: followsOfTheFollowingUserHandle, followersOfFollower: followersOfThisUserDoingTheFolloing}
        else 
            render json: {error: "Oh no, you couldn't follow this account"}, status: :unprocessable_entity
        end
    end

    def destroy
        Follower.destroy(params[:id])
        handleDoingTheUnfollowing = params[:handle]
        userDoingTheUnfollowing = User.find_by(handle: handleDoingTheUnfollowing)
        followsOfTheUnfollowingUserHandle = Follower.all.select{ |m| m.handle = handleDoingTheUnollowing}
        followersOfThisUserDoingTheUnfolloing = userDoingTheUnfollowing.followers
        render json: {followsOfThisFollower: followsOfTheUnfollowingUserHandle, followersOfFollower: followersOfThisUserDoingTheUnfolloing}
    end

    private
    def follow_params
        params.permit(:id, :name :handle, :user_id)
    end
end
