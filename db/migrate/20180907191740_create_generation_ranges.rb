class CreateGenerationRanges < ActiveRecord::Migration[5.1]
  def change
    create_table :generation_ranges do |t|

      t.string  :name
      t.string  :code

      t.timestamps
    end
  end
end
