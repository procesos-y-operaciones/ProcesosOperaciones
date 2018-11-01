class CreateCompetencies < ActiveRecord::Migration[5.1]
  def change
    create_table :competencies do |t|

      t.string    :code
      t.string    :comp_name
      t.integer   :percentaje

      t.belongs_to  :goal_type, index: true
      t.belongs_to  :area, index: true

      t.timestamps
    end
  end
end
