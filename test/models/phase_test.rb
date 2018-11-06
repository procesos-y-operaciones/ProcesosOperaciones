# == Schema Information
#
# Table name: phases
#
#  id         :integer          not null, primary key
#  proposed   :integer
#  goal_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class PhaseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
