class PostsController < ApplicationController
  def index
    @posts = Post.all.order(:id)
  end

  def new
    @action = 'new'
    @post = Post.new
  end

  def create
    @post = current_user.posts.new(post_params)
    if @post.save!
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @post = Post.find(params[:id])

  end

  def edit
    @action = 'edit'
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.update(display: 2)

    redirect_to root_path
  end

  def show_draft
    @posts = Post.all.order(:id).where(display: 'draft')
  end

  def draft
    @post = current_user.posts.new(post_params)
    # debugger
    @post.save!
    @post.update(display: 1)
    redirect_to root_path
  end


  private
  def post_params
    params.require(:post).permit(:title, :description)
  end

end
