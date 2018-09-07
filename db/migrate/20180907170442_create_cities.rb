class CreateCities < ActiveRecord::Migration[5.1]
  def change
    create_table :cities do |t|

      t.string  :name
      t.string  :code

      t.belongs_to  :departaments, index: true

      t.timestamps
    end
  end
end
