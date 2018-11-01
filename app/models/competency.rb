class Competency < ApplicationRecord

  belongs_to    :area
  has_many      :phases

  def self.get_all_sorted
    self.order('created_at DESC')
  end

  def self.get_name_sorted
    self.order('name ASC')
  end

  def self.get_by_type(type)
    self.where(goal_type_id: type)
  end

  def self.get_global
    self.where(area_id: 0)
  end

  def percent_name
    self.percentaje.to_s + "% - " + self.comp_name
  end

end
