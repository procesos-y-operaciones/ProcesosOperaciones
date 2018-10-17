# == Schema Information
#
# Table name: periods
#
#  id          :integer          not null, primary key
#  name        :string
#  code        :string
#  state       :string
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

class Period < ApplicationRecord

  def self.get_all_sorted
    self.order('created_at DESC')
  end

  def self.get_name_sorted
    self.order('name ASC')
  end

end
