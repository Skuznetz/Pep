class PostsController < ApplicationController
  
  before_action :find_post ,only: :show

  def index
  @posts = Post.paginate(page: params[:page],per_page: 3)
  end

  def show
  	
  end

  
  private

  def find_post

  	@post = Post.find(params[:id])
  end

  
end




