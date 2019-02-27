class AssociationTable < ActiveRecord::Migration[5.2]
  def change
    create_table :associations do |t|
      t.references :reporters
      t.references :photographers
      t.references :shoots
      t.timestamps null: false
    end
  end
end
