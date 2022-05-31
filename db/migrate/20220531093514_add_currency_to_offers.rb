class AddCurrencyToOffers < ActiveRecord::Migration[7.0]
  def change
    add_column :offers, :currency, :string
  end
end
