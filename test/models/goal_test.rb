# == Schema Information
#
# Table name: goals
#
#  id            :integer          not null, primary key
#  phases_number :integer
#  comment       :string
#  period_id     :integer
#  goal_type_id  :integer
#  user_id       :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class GoalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
