class ArticlesController < ApplicationController

	def show
		@article = Article.find(params[:id])
	end

	def new
		@article = Category.find(params[:category_id]).articles.new
	end

	def create
		category = Category.find(params[:category_id])
		category.articles.create(params[:article])
		redirect_to category
	end
end
