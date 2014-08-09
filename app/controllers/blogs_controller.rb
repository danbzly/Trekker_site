class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]
  # GET /blogs
  def index
    @blogs = Blog.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 6)
  end
  

  # GET /blogs/1
  def show
  @blog = Blog.find_by_slug(params[:id])
  end

  # GET /blogs/new
  def new
    @blog = Blog.new
  end

  # GET /blogs/1/edit
  def edit
    @blog = Blog.find_by_slug(params[:id])

  end

  # POST /blogs
  def create
    @blog = current_user.blogs.build(blog_params)
      if @blog.save
        redirect_to @blog, notice: 'Blog was successfully created.'
      else
        render action: 'new'
      end
    end
  

  # PATCH/PUT /blogs/1
  def update
      if @blog.update(blog_params)
        redirect_to @blog, notice: 'Blog was successfully updated.'
#         render :show, status: :ok, location: @blog 
      else
        render action: 'edit'
      end
    end
  

  # DELETE /blogs/1
  def destroy
    @blog.destroy
     redirect_to blogs_url, notice: 'Blog was successfully destroyed.' 
    end
  
def correct_user
      @blog = current_user.blogs.find_by_slug(params[:id])
      redirect_to blogs_path, notice: "Not authorized to edit this pin" if @blog.nil?
    end
    
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog
      @blog = Blog.find_by_slug(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blog_params
      params.require(:blog).permit(:title, :category, :description, :body_text, :image, :slug)
    end
end
