class AddAuthHashFieldsToReporters < ActiveRecord::Migration[5.2]
  def change
    add_column :reporters, :uid, :string, default: ''
    add_column :reporters, :nickname, :string, default: ''
  end
end
