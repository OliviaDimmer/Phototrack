class DropPhotogTables < ActiveRecord::Migration[5.2]
    def change
      def up
      drop_table :photographers, :photographers_shoots
    end

    def down
      raise ActiveRecord::IrreversibleMigration
    end
  end
end
