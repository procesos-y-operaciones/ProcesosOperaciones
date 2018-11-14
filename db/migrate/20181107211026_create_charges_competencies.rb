class CreateChargesCompetencies < ActiveRecord::Migration[5.1]
  def change
    create_table :charges_competencies do |t|

      t.integer     :percentaje
      t.belongs_to  :charge, index: true
      t.belongs_to  :goal, index: true

      t.timestamps
    end
  end
end
