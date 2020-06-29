class CreateMerchGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :merch_groups do |t|
      t.string :size
      t.string :title

      t.timestamps
    end
  end
end
