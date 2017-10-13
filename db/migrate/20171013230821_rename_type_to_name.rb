class RenameTypeToName < ActiveRecord::Migration[5.1]
  def change
    rename_column :exercises, :type, :name
  end
end
