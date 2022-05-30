class AddDetailsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone_number, :string
    add_column :users, :teacher, :boolean
    add_column :users, :languages, :string, array: true, default: []
    add_column :users, :bio, :text
    add_column :users, :location, :string
  end
end
