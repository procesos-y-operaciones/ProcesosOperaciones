class CreateAreas < ActiveRecord::Migration[5.1]
  def change
    create_table :areas do |t|

      t.string  :name
      t.string  :code

      t.belongs_to  :area, index: true

      t.timestamps
    end
  end
end
