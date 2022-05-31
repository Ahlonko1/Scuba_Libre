class CreateOrganisms < ActiveRecord::Migration[7.0]
  def change
    create_table :organisms do |t|
      t.string :name

      t.timestamps
    end
  end
end
