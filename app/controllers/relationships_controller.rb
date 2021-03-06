class RelationshipsController < ApplicationController
 before_action :logged_in_user

  def create
  	@user = User.find(params[:followed_id])
    current_user.follow(@user)
    flash.now[:success] = "You are now following #{@user.name}!"
    respond_to do |format|
      format.html { redirect_to @user }
      format.js
    end
    #redirect_to user
  end

  def destroy
  	@user = Relationship.find(params[:id]).followed
    current_user.unfollow(@user)
    flash.now[:success] = "You have un-followed #{@user.name}!"
    respond_to do |format|
      format.html { render 'user/index' }
      format.js
    end
    #redirect_to user
  end

end
