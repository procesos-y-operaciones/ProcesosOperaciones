class CreateGoalsUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :goals_users do |t|

      t.integer   :resource

      t.belongs_to :user, index: true
      t.belongs_to :goal, index: true

      t.timestamps
    end
  end
end
