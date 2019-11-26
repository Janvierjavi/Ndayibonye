class CommentsController < ApplicationController
  def create
    # # Search Blog from the parameter value and build it as comments linked to Blog.
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(comment_params)
    # Change the format according to client request
    respond_to do |format|
      if @comment.save
        format.js { render :index }
      else
        format.html { redirect_to post_path(@post), notice: 'Post failed...' }
      end
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    # @comment = @post.comments.find(comment_params)
    @comment = Comment.find(params[:id])
    @comment.destroy

    respond_to do |format|
        format.html { redirect_to @post }
        format.js
    end
end

  private
  # Strong parameter
  def comment_params
    params.require(:comment).permit(:post_id, :content)
  end
end
