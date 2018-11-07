# == Schema Information
#
# Table name: evaluations
#
#  id          :integer          not null, primary key
#  boss_id     :integer
#  step        :integer          default(1)
#  comment     :string
#  final_score :integer
#  resource    :string
#  user_id     :integer
#  period_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Evaluation < ApplicationRecord

  belongs_to :period

  belongs_to :user
  has_many :evaluations_goals
  has_many :goals, :through => :evaluations_goals, :class_name => 'EvaluationsGoal'
  accepts_nested_attributes_for :evaluations_goals, reject_if: :all_blank, allow_destroy: true
  has_many :evaluations_competencies
  has_many :competencies, :through => :evaluations_competencies, :class_name => 'EvaluationsCompetency'
  accepts_nested_attributes_for :evaluations_competencies, reject_if: :all_blank, allow_destroy: true

  def self.get_all_sorted
    self.order('created_at DESC')
  end

  def self.get_name_sorted
    self.order('name ASC')
  end

  def get_name_formula
    "#{self.name} (#{self.formula})"
  end

  def get_period
    Period.find(self.period_id)
  end

  def get_period_name
    Period.find(self.period_id).name.titleize
  end

end
