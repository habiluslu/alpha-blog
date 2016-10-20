class ArticlesController < ApplicationController
	def new
		@article = Article.new
	end

	def create
		#render plain: params[:article].inspect
		@article = Article.new(article_params)
		@article.save #there is no template to show. it doesnot know waht to show
		redirect_to articles_show(@article)
	end

	private 
		def article_params
			params.require(:article).permit(:title, :description)
		end
end