class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end


  def show
  end


  def new
    @post = Post.new
  end

  def edit
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
     flash[:notice]= "El Post ha sido creado exitosamente"
     redirect_to posts_path 
    else
      flash[:alert] = "Error al crear el post"
      render :new
    end
  end

def update

      # if @post.update(post_params)

      # else

      # end

    end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    #@post.destroy

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :content, :user_id)
    end
  end
