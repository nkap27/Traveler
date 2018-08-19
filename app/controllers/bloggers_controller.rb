class BloggersController < ApplicationController

  def new #/bloggers/new
    @blogger = Blogger.new
    render :new
  end

  def show #/bloggers/:id
    @blogger = Blogger.find(params[:id])
  end

  def create
    @blogger = Blogger.create(blogger_params)
  end

  private

  def blogger_params
    params.require(:blogger).permit(:name, :bio, :age)
  end
end
