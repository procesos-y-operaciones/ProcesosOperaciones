class CreatePeriods < ActiveRecord::Migration[5.1]
  def change
    create_table :periods do |t|

      t.string    :name
      t.string    :code
      t.string    :state
      t.integer   :resource
      t.integer   :boss_id
      t.date      :date_beg_p1
      t.date      :date_end_p1
      t.date      :date_beg_p2
      t.date      :date_end_p2
      t.date      :date_beg_p3
      t.date      :date_end_p3
      t.date      :date_beg_p4
      t.date      :date_end_p4

      t.timestamps
    end
  end
end
