class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    post=Post.find(params[:post_id])
    @comment=post.comments.build(comment_params)
    @comment.user_id = current_user.id

    if @comment.save
      flash[:notice] = "コメントしました"
      redirect_back(fallback_location: root_path)
    else
      flash[:notice] = "コメントできませんでした"
      redirect_back(fallback_location: root_path)
    end
  end

  def destroy
    Comment.find_by(post_id:params[:post_id],user_id:current_user.id).destroy
    flash[:notice]="コメントを削除しました"
    redirect_back(fallback_location: root_path)
  end
    private

    def comment_params
      params.require(:comment).permit(:comment)
    end
end
