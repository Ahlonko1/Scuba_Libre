class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.datetime :start_at
      t.integer :amount
      t.string :currency
      t.string :status
      t.integer :rating
      t.text :comment
      t.string :location
      t.references :offer, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
