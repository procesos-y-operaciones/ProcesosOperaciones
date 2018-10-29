class CreateCompetencies < ActiveRecord::Migration[5.1]
  def change
    create_table :competencies do |t|

      t.timestamps
    end
  end
end
