# == Schema Information
#
# Table name: evaluations_competencies
#
#  id            :integer          not null, primary key
#  score         :integer
#  competency_id :integer
#  evaluation_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class EvaluationsCompetencyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
