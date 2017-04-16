<<<<<<< HEAD
class TagsController < ApplicationController
  def show
  	@tag = Tag.find_by(name: params[:id])
  	@posts = @tag.posts
=======
class TagsController < applicationController
  def show 
  	@tag = Tag.find_by(name: params[:id])
  	@post = @tag.posts
>>>>>>> 1ветка
  end
end