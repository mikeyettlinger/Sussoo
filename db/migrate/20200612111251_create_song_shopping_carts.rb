class CreateSongShoppingCarts < ActiveRecord::Migration[6.0]
  def change
    create_table :song_shopping_carts do |t|
      t.references :shopping_cart, null: false, foreign_key: true
      t.references :song, null: false, foreign_key: true

      t.timestamps
    end
  end
end
