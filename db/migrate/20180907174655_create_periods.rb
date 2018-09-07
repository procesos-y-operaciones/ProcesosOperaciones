class CreatePeriods < ActiveRecord::Migration[5.1]
  def change
    create_table :periods do |t|

      t.string    :name
      t.string    :code
      t.string    :state
      t.date      :date_beg
      t.date      :date_end

      t.timestamps
    end
  end
end
