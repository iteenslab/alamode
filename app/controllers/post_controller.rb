class PostController < ApplicationController
  def index

  end

  def show
    @post=Post.find_by(id: params[:id])
  end
end
