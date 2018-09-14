class Area < ApplicationRecord

  def self.get_all_sorted
    self.order('created_at DESC')
  end

end
