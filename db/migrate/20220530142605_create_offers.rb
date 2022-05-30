class CreateOffers < ActiveRecord::Migration[7.0]
  def change
    create_table :offers do |t|
      t.string :name
      t.string :category
      t.integer :duration
      t.integer :price
      t.text :briefing
      t.string :level
      t.string :unit_duration
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
