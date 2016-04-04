class Kanri::PostsController < ApplicationController
  before_action :require_admin
  before_action :set_post, only: [:edit, :update, :destroy, :show]
  
  def new
    if params[:chapter_id].present?
      @chapter = Chapter.find(params[:chapter_id])
    else
      @chapter = Chapter.find(@post.chapter_id)
    end
    @post = Post.new
  end
  
  def edit
    @chapter = @post.chapter
  end
  
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to kanri_chapter_path(@post.chapter), notice: "レッスンを作成しました。"
    else
      @chapter = Chapter.find(@post.chapter_id)
      render :new, alert: "レッスン作成に失敗しました"
    end
  end
  
  def update
    if @post.update(post_params)
      redirect_to kanri_chapter_path(@post.chapter), notice: "レッスンを更新しました。"
    else
      @chapter = Chapter.find(@post.chapter_id)
      render :new, alert: "レッスン更新に失敗しました。"
    end
  end
  
  private
  def set_post
    @post = Post.find(params[:id])
  end
  
  def post_params
    params.require(:post).permit(:chapter_id, :number, :title, :body, :image, :movie, :post_type, :ref_url)
  end
end
