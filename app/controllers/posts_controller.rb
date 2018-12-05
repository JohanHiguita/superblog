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

  @post=Post.find(params[:id])
  if @post.update(post_params)
    flash[:notice]= "El post ha sido editado exitosamente"
    redirect_to posts_path  
  else
    flash[:alert] = "Error al editar el post"
    render :edit
  end

end


def destroy
  post = Post.find(params[:id])
  post.destroy
  flash[:notice]="El post fue eliminado exitosamente"
  redirect_to posts_path

end

private

def set_post
  @post = Post.find(params[:id])
end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :content, :user_id)
    end
  end
