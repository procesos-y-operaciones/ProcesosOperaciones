# == Schema Information
#
# Table name: periods
#
#  id          :integer          not null, primary key
#  name        :string
#  code        :string
#  state       :string
#  resource    :integer
#  boss_id     :integer
#  date_beg_p1 :date
#  date_end_p1 :date
#  date_beg_p2 :date
#  date_end_p2 :date
#  date_beg_p3 :date
#  date_end_p3 :date
#  date_beg_p4 :date
#  date_end_p4 :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class PeriodTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
