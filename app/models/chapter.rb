# == Schema Information
#
# Table name: chapters
#
#  id         :integer          not null, primary key
#  lesson_id  :integer
#  title      :string(255)
#  number     :integer
#  created_at :datetime
#  updated_at :datetime
#

class Chapter < ActiveRecord::Base
  belongs_to :lesson
  has_many :posts
  
  validates :lesson_id, presence: true
  validates :title, presence: true
end
