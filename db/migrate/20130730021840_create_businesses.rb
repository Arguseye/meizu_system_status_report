class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :title
      t.string :image_url

      t.timestamps
    end
  end
end
