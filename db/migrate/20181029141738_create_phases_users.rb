class CreatePhasesUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :phases_users do |t|

      t.integer :reached
      t.integer :proposed
      t.string  :compromise

      t.belongs_to  :evaluations_goal, index: true

      t.timestamps
    end
  end
end
