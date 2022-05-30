class CreateCertifications < ActiveRecord::Migration[7.0]
  def change
    create_table :certifications do |t|
      t.string :title
      t.text :description
      t.references :association, null: false, foreign_key: true

      t.timestamps
    end
  end
end
