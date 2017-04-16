class TagsController < applicationController
  def show 
  	@tag = Tag.find_by(name: params[:id])
  	@post = @tag.posts
  end
end