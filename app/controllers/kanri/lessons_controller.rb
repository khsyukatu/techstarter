class Kanri::LessonsController < ApplicationController
  before_action :require_admin
  before_action :set_lesson, only: [:edit, :update, :destroy, :show]
  def index
    @lessons = Lesson.all
  end
  
  def show
    @chapters = @lesson.chapters.order('number')
  end
  
  def new
    @lesson = Lesson.new
  end
  
  def edit
  end
  
  def create
    @lesson = Lesson.new(lesson_params)
    if @lesson.save
      redirect_to kanri_lessons_path, notice: "レッスンを作成しました。"
    else
      render :new, alert: "レッスン作成に失敗しました"
    end
  end
  
  def update
    if @lesson.update(lesson_params)
      redirect_to kanri_lessons_path, notice: "レッスンを更新しました。"
    else
      render :new, alert: "レッスン更新に失敗しました。"
    end
  end
  
  private
  def set_lesson
    @lesson = Lesson.find(params[:id])
  end
  
  def lesson_params
    params.require(:lesson).permit(:title, :status, :description, :image)
  end
  
end
