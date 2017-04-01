class PostsController < ApplicationController
  def index = Post.all 
  end
end