# == Schema Information
#
# Table name: evaluations
#
#  id         :integer          not null, primary key
#  name       :string
#  code       :string
#  formula    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Evaluation < ApplicationRecord

  def self.get_all_sorted
    self.order('created_at DESC')
  end

  def self.get_name_sorted
    self.order('name ASC')
  end

  def get_name_formula
    "#{self.name} (#{self.formula})"
  end

end
