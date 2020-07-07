class VotesController < ApplicationController
  def create
    @post=Post.find_by(id:params[:post_id])
    @vote=Vote.new(post_id:params[:post_id],choice:params[:choice])
    @vote.user_id=current_user.id
    @vote.save 
      
  end  
end
