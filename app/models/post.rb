# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  chapter_id :integer
#  number     :integer
#  title      :string(255)
#  body       :text
#  image      :string(255)
#  movie      :text
#  post_type  :integer
#  created_at :datetime
#  updated_at :datetime
#

class Post < ActiveRecord::Base
  belongs_to :chapter
  mount_uploader :image, ImageUploader
  
  validates :title, presence: true, if: "post_type == 1"
  validates :body, presence: true, if: "post_type == 2"
  validates :image, presence: true, if: "post_type == 3"
  validates :movie, presence: true, if: "post_type == 4"
end
