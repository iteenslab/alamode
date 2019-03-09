class PostController < ApplicationController
  def index
    @post=Post.all
    @title=Title.all
  end

  def show
    @post=Post.find_by(id: params[:id])
    @title=Title.find_by(id: params[:id])
  end

  def new 
    @post=Post.new(content: params[:content])
    @title=Title.new(content: params[:content])
  end 

  def create
    @post=Post.new(content: params[:content])
    @title=Title.new(content: params[:content])
    if @post.save
      flash[:nitice]="投稿しました"
      redirect_to("/post/index")
    else
      flash[:notice]="項目が入力されていません"
      render("post/create")
    end
  end

  def update
    @post=Post.find_by(id: params[:id])
    @post.content=params[:content]
    if @post.save
      flash[:notice]="投稿を更新しました"
      redirect_to("/posts/#{@post.id}")
    else 
      flash[:notice]="項目が入力されていません"
      render("post/update")
    end
  end
end
