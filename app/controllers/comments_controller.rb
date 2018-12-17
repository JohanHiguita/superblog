class CommentsController < ApplicationController

	before_action :authenticate_user!, except: [:index, :show] 
	
	def create


		@post =Post.find(params[:post_id])
		@comment = @post.comments.build(comment_params) 
		@comment.user=current_user
		
		if @comment.save
			flash[:notice]= "El comentario ha sido creado exitosamente"
			redirect_to post_path(@post)
		else
			flash[:alert] = "Error al crear el comentario"
	
		end
		
	end


	private

	def comment_params
  		params.require(:comment).permit(:body, :user_id, :post_id) #solo permite estos datos 
  	end

  end
