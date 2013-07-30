class CreateMachineErrors < ActiveRecord::Migration
  def change
    create_table :machine_errors do |t|
      t.integer :machine_business_id
      t.integer :pv
      t.integer :error
      t.string :error_type
      t.date :on_date

      t.timestamps
    end
  end
end
