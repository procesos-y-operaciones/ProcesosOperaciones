# == Schema Information
#
# Table name: selfs
#
#  id          :integer          not null, primary key
#  name        :string
#  code        :string
#  state       :string
#  date_beg_p1 :date
#  date_end_p1 :date
#  date_beg_p2 :date
#  date_end_p2 :date
#  date_beg_p3 :date
#  date_end_p3 :date
#  date_beg_p4 :date
#  date_end_p4 :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Period < ApplicationRecord

  has_many  :evaluations

  before_save do
    UpdaterStepJob.perform_now self
  end

  def self.get_all_sorted
    self.order('created_at DESC')
  end

  def self.get_name_sorted
    self.order('name ASC')
  end

  def update_state
    if self.present?
      today = Date.today
      if self.date_beg_p1 <= today && today < self.date_end_p1
        self.state='FASE 1'
        self.date_beg_p2
      elsif self.date_beg_p2 <= today && today < self.date_end_p2
        self.state='FASE 2'
        self.date_beg_p3
      elsif self.date_beg_p3 <= today && today < self.date_end_p3
        self.state='FASE 3'
        self.date_beg_p4
      elsif self.date_beg_p4 <= today && today < self.date_end_p4
        self.state='FASE 4'
        self.date_end_p4
      else
        self.state='CADUCADO'
        nil
      end
    end
  end

end
