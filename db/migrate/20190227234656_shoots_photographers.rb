class ShootsPhotographers < ActiveRecord::Migration[5.2]
  def change
    create_join_table :shoots, :photographers do |t|
      t.index :shoot_id
      t.index :photographer_id
      t.timestamps null: false
    end
  end
end
