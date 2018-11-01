# == Schema Information
#
# Table name: goals
#
#  id            :integer          not null, primary key
#  phases_number :integer
#  percentaje    :integer
#  name          :string
#  comment       :string
#  period_id     :integer
#  goal_type_id  :integer
#  evaluation_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Goal < ApplicationRecord

  belongs_to    :area
  has_many      :phases
  accepts_nested_attributes_for :phases, reject_if: :all_blank, allow_destroy: true
  has_and_belongs_to_many :evaluations

  def self.get_all_sorted
    self.order('created_at DESC')
  end

  def self.get_name_sorted
    self.order('name ASC')
  end

  def self.get_by_type(type)
    self.where(goal_type_id: type)
  end

  def self.get_global
    self.where(area_id: 0)
  end

  def percent_name
    self.percentaje.to_s + "% - " + self.goal_name
  end

end
