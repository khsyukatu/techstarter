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

require 'test_helper'

class LessonTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
