class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  def index
    @search = Post.search(params[:q])
    if params[:q]
      @posts=@search.result.order(:content).page(params[:page]).per(2)
    else
      @posts = Post.all.order("created_at DESC").page(params[:page])
    
    end
  end

  def show
    @comments = @post.comments
    @comment = @post.comments.build
  end

  def new
    @post = Post.new
  end


  def edit
  end

  def create
    @post = Post.new(post_params)

      if @post.save
         redirect_to @post, notice: 'Post was successfully created.' 
      else
       render :new 
      end
  end

  def update
      if @post.update(post_params)
         redirect_to @post, notice: 'Post was successfully updated.' 
      else
        render :edit 
      end
  end
  def destroy
    @post.destroy
     redirect_to posts_url, notice: 'Post was successfully destroyed.' 
  end

  private
   
    def set_post
      @post = Post.find(params[:id])
    end

    
    def post_params
      params.require(:post).permit(:tittle, :image, :user_id, :content, :categories)
    end
end
