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

class Lesson < ActiveRecord::Base
  has_many :chapters
  mount_uploader :image, ImageUploader
end
