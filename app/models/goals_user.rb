# == Schema Information
#
# Table name: goals_users
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class GoalsUser < ApplicationRecord

  belongs_to  :user
  belongs_to  :goal
  has_many  :phases
  accepts_nested_attributes_for :phases, reject_if: :all_blank, allow_destroy: true

end
