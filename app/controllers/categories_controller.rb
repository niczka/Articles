class CategoriesController < ApplicationController

	def index
		@categories = Category.all
	end

	def show
		@category = Category.find(params[:id])
	end

	def new
		@category = Category.new
	end
	
	def create
		@category = Category.new(params[:category])
		if @category.save!
			redirect_to root_path
		else
			render :new
		end
	end

end
