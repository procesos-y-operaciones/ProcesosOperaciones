class CreatePhases < ActiveRecord::Migration[5.1]
  def change
    create_table :phases do |t|

      t.integer   :proposed
      t.integer   :reached
      t.string    :compromise

      t.belongs_to  :goal, index: true
      t.belongs_to  :goals_user, index: true

      t.timestamps
    end
  end
end
