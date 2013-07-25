class CreateMachineBusinesses < ActiveRecord::Migration
  def change
    create_table :machine_businesses do |t|
      t.string :ip
      t.string :type
      t.string :business
      t.string :domain

      t.timestamps
    end
  end
end
