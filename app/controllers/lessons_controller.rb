# == Schema Information
#
# Table name: lessons
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  status      :boolean
#  description :text
#  image       :string(255)
#

class LessonsController < ApplicationController
  def index
    @lessons = Lesson.where(status: true)
  end
  
  def show
    @lesson = Lesson.find(params[:id])
    @chapters = @lesson.chapters
  end
end
