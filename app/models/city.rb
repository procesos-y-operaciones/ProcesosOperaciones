# == Schema Information
#
# Table name: cities
#
#  id             :integer          not null, primary key
#  name           :string
#  code           :string
#  departament_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class City < ApplicationRecord

  def self.get_all_sorted
    self.order('created_at DESC')
  end

  def self.get_name_sorted
    self.order('name ASC')
  end

end
