# == Schema Information
#
# Table name: cities
#
#  id              :integer          not null, primary key
#  name            :string
#  code            :string
#  departaments_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class CityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
