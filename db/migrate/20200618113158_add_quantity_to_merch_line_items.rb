class AddQuantityToMerchLineItems < ActiveRecord::Migration[6.0]
  def change
    add_column :merch_line_items, :quantity, :integer, default: 1
  end
end
