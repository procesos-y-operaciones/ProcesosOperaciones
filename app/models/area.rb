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

  has_many :areas

  def self.get_all_sorted
    self.order('created_at DESC')
  end

  def self.get_name_sorted
    self.order('name ASC')
  end

  def self.get_tree
    r = []
    self.all.each do |a|
      r << a.get_tuple
    end
    r
  end

  def self.get_name(id)
    self.exists?(id: id) ? self.find(id).name : ""
  end

  def self.get_info(id)
    "Info"
  end

  def get_tuple
    [self.name, Area.get_name(self.area_id), Area.get_info(self.id)]
  end

end
