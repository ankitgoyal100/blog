class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(params[:comment].permit(:commenter, :body))
    if @comment.save
      flash[:success] = "Comment created!"
      redirect_to post_path(@post)
    else
      flash[:error] = "There was a problem with your comment"
      redirect_to post_path(@post)  
    end
   end
end