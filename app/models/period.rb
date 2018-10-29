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

  after_commit do
    if self.state == nil || self.state == ""
      UpdaterStepJob.perform_now self
    end
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
        self.update(state: 'FASE 1')
        self.date_beg_p2
      elsif self.date_beg_p2 <= today && today < self.date_end_p2
        self.update(state: 'FASE 2')
        self.date_beg_p3
      elsif self.date_beg_p3 <= today && today < self.date_end_p3
        self.update(state: 'FASE 3')
        self.date_beg_p4
      elsif self.date_beg_p4 <= today && today < self.date_end_p4
        self.update(state: 'FASE 4')
        self.date_end_p4
      else
        self.update(state: 'CADUCADO')
        nil
      end
    end
  end

end
