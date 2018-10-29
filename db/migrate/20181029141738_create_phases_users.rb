class CreatePhasesUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :phases_users do |t|

      t.integer :reached
      t.string  :compromise

      t.belongs_to  :goals_evaluations, index: true

      t.timestamps
    end
  end
end
