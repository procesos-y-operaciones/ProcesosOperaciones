# == Schema Information
#
# Table name: generation_ranges
#
#  id         :integer          not null, primary key
#  name       :string
#  code       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class GenerationRange < ApplicationRecord

  def self.get_all_sorted
    self.order('created_at DESC')
  end

end
