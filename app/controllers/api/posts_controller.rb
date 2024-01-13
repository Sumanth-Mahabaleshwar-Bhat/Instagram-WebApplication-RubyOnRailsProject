class Api::PostsController < ApiController
  before_action :set_post, only: [:show, :update, :destroy]
  def index
    render json: Post.all
  end

  def show
    post = Post.find_by(id: params[:id])
    if post
      render json: post, include: :comments,status: 200
    else
      render json: { error: 'Post not found'}, status: 404
    end
  end

  def create
    user = User.find(params[:user_id])
    post = user.posts.new(caption: params[:caption])
    if post.save
      render json: post
    else
      render json: { error: 'Cannot create Post'}, status: 404
    end
  end

  def update
    if @post.update(post_params)
      render show, status: '200 OK'
    else
      render json: { message: @post.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def search
    render json: Post.where('caption LIKE ?', "%#{params[:caption]}")
  end

  def destroy
    @post.destroy
    render :show, status: :ok
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:caption)
  end
end