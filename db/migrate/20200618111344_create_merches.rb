class CreateMerches < ActiveRecord::Migration[6.0]
  def change
    create_table :merches do |t|
      t.string :category
      t.string :size
      t.integer :price
      t.integer :quantity
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
