class CreateMachineStatuses < ActiveRecord::Migration
  def change
    create_table :machine_statuses do |t|
      t.string :ip
      t.decimal :cpu_usage, :precision => 10, :scale => 2
      t.decimal :disk_io_rate, :precision => 10, :scale => 2
      t.decimal :load, :precision => 10, :scale => 2
      t.integer :tcp_connection

      t.timestamps
    end
  end
end
