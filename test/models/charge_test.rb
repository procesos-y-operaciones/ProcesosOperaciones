# == Schema Information
#
# Table name: charges
#
#  id              :integer          not null, primary key
#  name            :string
#  code            :string
#  total_employees :integer
#  area_id         :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class ChargeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
