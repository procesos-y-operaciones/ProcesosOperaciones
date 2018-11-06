# == Schema Information
#
# Table name: phases_users
#
#  id                   :integer          not null, primary key
#  reached              :integer
#  compromise           :string
#  goals_evaluations_id :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

require 'test_helper'

class PhasesUserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
