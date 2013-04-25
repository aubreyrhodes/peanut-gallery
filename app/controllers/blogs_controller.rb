class BlogsController < ApplicationController
  def new
    @blog = Blog.new
  end

  def create
    @blog = current_user.blogs.build(blog_params)
    if @blog.save
      redirect_to root_path
    else
      render action: :new
    end
  end

  private

  def blog_params
    params.require(:blog).permit(:name)
  end
end
