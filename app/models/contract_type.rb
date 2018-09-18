# == Schema Information
#
# Table name: contract_types
#
#  id         :integer          not null, primary key
#  name       :string
#  code       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ContractType < ApplicationRecord

  def self.get_all_sorted
    self.order('created_at DESC')
  end
  
end
