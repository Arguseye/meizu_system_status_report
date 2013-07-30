class CreateClientErrors < ActiveRecord::Migration
  def change
    create_table :client_errors do |t|
      t.string :business
      t.integer :errors
      t.timestamp :time
      t.text :detail

      t.timestamps
    end
  end
end
