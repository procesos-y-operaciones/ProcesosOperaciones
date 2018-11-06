# == Schema Information
#
# Table name: phases_users
#
#  id                   :integer          not null, primary key
#  reached              :integer
#  compromise           :string
#  goals_evaluations_id :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class PhasesUser < ApplicationRecord

  belongs_to  :evaluations_goal

end
