class Admin::PostsController < Admin::AdminController
 
  before_action :find_post ,only: [:show,:edit,:update,:destroy]

  def index
  @posts = Post.paginate(page: params[:page],per_page: 3)
  end

  def show
  	
  end
def new
    @post = Post.new
  end
  
  def create
    @post =Post.new(post_params)
    if @post.save
      redirect_to @post , success: 'Статья создана'   
    else
      flash.now[:danger] ='Статья не создана'
      render :new
    end
  end

  def edit
  end

  def update
    if @post.update_attributes(post_params)
      redirect_to @post,success: 'Статья изменена'

    else
      flash.now[:danger ] ='Статья не изменилась'
      render :edit
    end
  end

  def destroy
    
    @post.destroy
    redirect_to posts_path, success: 'Статья удалена'
  end

  
  
  private

  def find_post

  	@post = Post.find(params[:id])
  end
   def post_params

    params.require(:post).permit(:title,:summary,:body,:image,:all_tags,:category_id)

  end
  
end




