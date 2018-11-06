# == Schema Information
#
# Table name: evaluations
#
#  id          :integer          not null, primary key
#  boss_id     :integer
#  step        :integer          default(1)
#  comment     :string
#  final_score :integer
#  resource    :string
#  user_id     :integer
#  period_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class EvaluationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
