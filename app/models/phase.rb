# == Schema Information
#
# Table name: phases
#
#  id         :integer          not null, primary key
#  proposed   :integer
#  reached    :integer
#  compromise :string
#  goal_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Phase < ApplicationRecord

  belongs_to :goal

end
