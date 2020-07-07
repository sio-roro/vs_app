class PostsController < ApplicationController
  def index
    @posts=Post.all.order(id: "DESC") 
  end

  def new
    @post=Post.new
  end

  def create
    @post=Post.new(post_params)
    @post.user_id=current_user.id
    if @post.save
      flash[:notice]="投稿されました！"
      redirect_to :action => "index"
    else
      render("posts/new")
    end  
  end

  def show
    @post=Post.find(params[:id])
    @comments = @post.comments.order(id: "DESC") 
    @comment = @post.comments.build
  end
  
  def destroy
    path = Rails.application.routes.recognize_path(request.referer)
    Post.find(params[:id]).destroy
    flash[:notice]="投稿が削除されました"
    
    if path[:controller] == "posts" && path[:action] == "show" 
      redirect_to :action => "index"
    else
      redirect_back(fallback_location: root_path)
    end  

  end 


  private
  def post_params
    params.require(:post).permit(:body,:one,:two)
  end
end
