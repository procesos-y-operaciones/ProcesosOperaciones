# == Schema Information
#
# Table name: goals
#
#  id            :integer          not null, primary key
#  phases_number :integer
#  comment       :string
#  periods_id    :integer
#  goal_types_id :integer
#  users_id      :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class GoalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
