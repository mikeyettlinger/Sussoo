class AddStripeCardTokenToRegistration < ActiveRecord::Migration[6.0]
  def change
    add_column :registrations, :card_token, :string
  end
end
