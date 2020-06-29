class RemoveSizeFromMerchGroup < ActiveRecord::Migration[6.0]
  def change
    remove_column :merch_groups, :size, :string
  end
end
