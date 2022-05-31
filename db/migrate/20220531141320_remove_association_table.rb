class RemoveAssociationTable < ActiveRecord::Migration[7.0]
  def change
    remove_reference :certifications, :association
    remove_reference :user_associations, :association
    drop_table :associations

  end
end
