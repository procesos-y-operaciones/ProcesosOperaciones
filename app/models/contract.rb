# == Schema Information
#
# Table name: contracts
#
#  id               :integer          not null, primary key
#  employees        :integer
#  contract_type_id :integer
#  charge_id        :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Contract < ApplicationRecord

  belongs_to :charge

  def self.get_name_sorted
    self.order('name ASC')
  end

end
