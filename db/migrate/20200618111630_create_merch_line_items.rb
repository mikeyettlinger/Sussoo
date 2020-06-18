class CreateMerchLineItems < ActiveRecord::Migration[6.0]
  def change
    create_table :merch_line_items do |t|
      t.references :merch, null: false, foreign_key: true
      t.belongs_to :cart, null: false, foreign_key: true

      t.timestamps
    end
  end
end
