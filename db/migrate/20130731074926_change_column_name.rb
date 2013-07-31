class ChangeColumnName < ActiveRecord::Migration
  def change
   rename_column("machine_businesses","type","machine_type")
  end
end
