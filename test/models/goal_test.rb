# == Schema Information
#
# Table name: goals
#
#  id            :integer          not null, primary key
#  code          :string
#  goal_name     :string
#  phases_number :integer
#  general_ind   :string
#  specific_ind  :string
#  percentaje    :integer
#  goal_type_id  :integer
#  area_id       :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class GoalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
