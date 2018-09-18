# == Schema Information
#
# Table name: phases
#
#  id         :integer          not null, primary key
#  proposed   :integer
#  reached    :integer
#  compromise :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Phase < ApplicationRecord
end
