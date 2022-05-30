class CreateUserAssociations < ActiveRecord::Migration[7.0]
  def change
    create_table :user_associations do |t|
      t.integer :member_number
      t.references :association, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
