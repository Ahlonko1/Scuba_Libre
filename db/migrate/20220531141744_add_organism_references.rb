class AddOrganismReferences < ActiveRecord::Migration[7.0]
  def change
    add_reference :certifications, :organism, index: true
    add_reference :user_associations, :organism, index: true
  end
end
