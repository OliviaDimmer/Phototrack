class CreateReporters < ActiveRecord::Migration[5.2]
  def change
    create_table :reporters do |t|
      t.string :name
      t.string :email
      t.string :phone_number

      t.timestamps
    end
  end
end
