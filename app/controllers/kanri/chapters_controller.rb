class Kanri::ChaptersController < ApplicationController
  before_action :require_admin
  before_action :set_chapter, only: [:edit, :update, :destroy, :show]
  def index
    @chapters = Chapter.all
  end
  
  def show
    @posts = @chapter.posts.order("number")
  end
  
  def new
    @lesson = Lesson.find(params[:lesson_id])
    @chapter = Chapter.new
  end
  
  def edit
    @lesson = Lesson.find(params[:lesson_id])
  end
  
  def create
    @chapter = Chapter.new(chapter_params)
    if @chapter.save
      redirect_to kanri_lesson_path(@chapter.lesson), notice: "レッスンを作成しました。"
    else
      @lesson = Lesson.find(@chapter.lesson_id)
      render :new, alert: "レッスン作成に失敗しました"
    end
  end
  
  def update
    if @chapter.update(chapter_params)
      redirect_to kanri_lesson_path(@chapter.lesson), notice: "レッスンを更新しました。"
    else
      @lesson = Lesson.find(@chapter.lesson_id)
      render :new, alert: "レッスン更新に失敗しました。"
    end
  end
  
  private
  def set_chapter
    @chapter = Chapter.find(params[:id])
  end
  
  def chapter_params
    params.require(:chapter).permit(:title, :lesson_id, :number, :body, :movie)
  end
end
