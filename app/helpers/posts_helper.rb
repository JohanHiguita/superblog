module PostsHelper
	def btn_name
		@post.new_record? ? "Publicar post" : "Editar post"
	end

	def form_title
		@post.new_record? ? "Nuevo post" : "Editar post"
	end
end
