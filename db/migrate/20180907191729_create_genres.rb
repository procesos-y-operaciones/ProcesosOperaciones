class CreateGenres < ActiveRecord::Migration[5.1]
  def change
    create_table :genres do |t|

      t.string  :name
      t.string  :code
      t.string  :alias

      t.timestamps
    end
  end
end
