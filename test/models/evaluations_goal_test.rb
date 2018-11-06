# == Schema Information
#
# Table name: evaluations_goals
#
#  id            :integer          not null, primary key
#  goal_id       :integer
#  evaluation_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class EvaluationsGoalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
