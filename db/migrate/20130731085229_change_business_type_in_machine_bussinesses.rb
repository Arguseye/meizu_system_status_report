class ChangeBusinessTypeInMachineBussinesses < ActiveRecord::Migration
  def up
      change_column :machine_businesses, :business, :integer
      rename_column :machine_businesses, :business, :business_id
  end
  
  def down
      rename_column :machine_businesses, :business_id, :business
      change_column :machine_businesses, :business, :string
  end
end
