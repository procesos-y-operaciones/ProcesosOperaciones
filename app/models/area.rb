# == Schema Information
#
# Table name: areas
#
#  id         :integer          not null, primary key
#  name       :string
#  code       :string
#  areas_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Area < ApplicationRecord

  def self.get_all_sorted
    self.order('created_at DESC')
  end

end
