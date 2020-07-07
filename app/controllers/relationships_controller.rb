class RelationshipsController < ApplicationController
  

  def create
    user = User.find(params[:id])
   
    if current_user.follow(user)
      flash[:notice] = 'ユーザーをフォローしました'
      redirect_to user
    else
      flash.now[:notice] = 'ユーザーのフォローに失敗しました'
      redirect_to user
    end
  end

  def destroy
    user = User.find(params[:id])
    following = current_user.unfollow(user)
    if current_user.unfollow(user)
      flash[:notice] = 'ユーザーのフォローを解除しました'
      redirect_to user
    else
      flash.now[:notice] = 'ユーザーのフォロー解除に失敗しました'
      redirect_to user
    end
  end

 
end
