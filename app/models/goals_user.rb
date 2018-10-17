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

end
