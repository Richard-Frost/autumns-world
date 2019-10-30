class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
  	rename_column :users, :last_name_string, :last_name
  end
end
