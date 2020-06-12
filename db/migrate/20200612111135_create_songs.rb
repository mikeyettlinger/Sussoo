class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.integer :price
      t.float :length
      t.text :description

      t.timestamps
    end
  end
end
