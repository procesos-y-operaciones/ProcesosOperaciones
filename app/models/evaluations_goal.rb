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

end
