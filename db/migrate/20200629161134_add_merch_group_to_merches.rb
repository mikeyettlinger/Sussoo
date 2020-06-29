class AddMerchGroupToMerches < ActiveRecord::Migration[6.0]
  def change
    add_reference :merches, :merch_group, foreign_key: true
  end
end
