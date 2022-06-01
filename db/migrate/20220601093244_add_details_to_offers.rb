class AddDetailsToOffers < ActiveRecord::Migration[7.0]
  def change
    add_column :offers, :prerequisites, :text
    add_column :offers, :included, :text
    add_column :offers, :dives, :integer
  end
end
