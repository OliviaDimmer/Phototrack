class CreateShoots < ActiveRecord::Migration[5.2]
  def change
    create_table :shoots do |t|
      t.string :slug
      t.text :assignment_description
      t.datetime :start
      t.datetime :end
      t.string :location
      t.string :contact_name
      t.string :contact_phone_number
      t.datetime :deadline

      t.timestamps
    end
  end
end
