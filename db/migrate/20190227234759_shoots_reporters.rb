class ShootsReporters < ActiveRecord::Migration[5.2]
  def change
      create_join_table :shoots, :reporters do |t|
        t.index :shoot_id
        t.index :reporter_id
        t.timestamps null: false
      end
  end
end
