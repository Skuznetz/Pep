class CategoriesController < ApplicationController
  before_action :set_category,only: [:show,:edit,:update,:destroy]

  def index
  	@categories = Category.all
  end

  def show
  end

  def new
  	@category = Category.new
  end

  def create
  	@category = Category.new(category_params)
  	if @category.save
  	  redirect_to categories_path,success: 'Категория создана'
  	else
  	  flash[:danger] = 'Категория не создана'
  	  render :new
  	end
  end

  def edit
  end

  def update 
  	if @category.update_attributes(category_params)
  	  redirect_to categories_path,success: 'Категория обновлена'
  	else
      flash[:danger] = 'Категория не обновлена'
      render :edit
    end
  end
end