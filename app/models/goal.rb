# == Schema Information
#
# Table name: goals
#
#  id            :integer          not null, primary key
#  phases_number :integer
#  comment       :string
#  period_id     :integer
#  goal_type_id  :integer
#  user_id       :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Goal < ApplicationRecord

  has_many :phases
  accepts_nested_attributes_for :phases, reject_if: :all_blank, allow_destroy: true

  def self.get_all_sorted
    self.order('created_at DESC')
  end

  def self.get_name_sorted
    self.order('name ASC')
  end

  def self.get_by_type(type)
    self.where(goal_type_id: type)
  end

end
