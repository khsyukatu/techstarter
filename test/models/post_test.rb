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

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
