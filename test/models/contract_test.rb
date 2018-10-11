# == Schema Information
#
# Table name: contracts
#
#  id               :integer          not null, primary key
#  employees        :integer
#  contract_type_id :integer
#  charge_id        :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class ContractTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
