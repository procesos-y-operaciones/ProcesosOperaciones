# == Schema Information
#
# Table name: charges
#
#  id              :integer          not null, primary key
#  name            :string
#  code            :string
#  total_employees :integer
#  area_id         :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Charge < ApplicationRecord

  has_many :contracts, dependent: :destroy
  accepts_nested_attributes_for :contracts, allow_destroy: true

  def self.get_all_sorted
    self.order('created_at DESC')
  end

  def self.get_name_sorted
    self.order('name ASC')
  end

end
