# == Schema Information
#
# Table name: evaluations_goals
#
#  id            :integer          not null, primary key
#  goal_id       :integer
#  evaluation_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class EvaluationsGoal < ApplicationRecord

  belongs_to :evaluation
  belongs_to :goal
  has_many   :phases_users
  accepts_nested_attributes_for :phases_users, reject_if: :all_blank, allow_destroy: true

  before_save do
    self.goal.phases.pluck(:proposed).each do |i|
      self.phases_users.append(PhasesUser.create(proposed: i))
    end
  end

end
