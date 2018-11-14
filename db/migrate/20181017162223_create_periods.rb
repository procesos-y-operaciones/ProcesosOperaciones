class CreatePeriods < ActiveRecord::Migration[5.1]
  def change
    create_table :periods do |t|

      t.string    :name
      t.string    :code
      t.string    :state

      t.timestamps
    end
  end
end
