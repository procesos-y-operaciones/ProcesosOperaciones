# == Schema Information
#
# Table name: identification_types
#
#  id         :integer          not null, primary key
#  name       :string
#  code       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class IdentificationType < ApplicationRecord

  def self.get_all_sorted
    self.order('created_at DESC')
  end

  def self.get_name_sorted
    self.order('name ASC')
  end

end
