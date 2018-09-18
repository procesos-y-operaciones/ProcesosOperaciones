# == Schema Information
#
# Table name: contracts
#
#  id                :integer          not null, primary key
#  employees         :integer
#  contract_types_id :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Contract < ApplicationRecord

  belongs_to :charge

end
