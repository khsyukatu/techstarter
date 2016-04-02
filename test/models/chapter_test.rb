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

require 'test_helper'

class ChapterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
