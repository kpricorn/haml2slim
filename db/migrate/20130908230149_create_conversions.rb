class CreateConversions < ActiveRecord::Migration
  def change
    create_table :conversions do |t|
      t.text :haml
      t.text :slim

      t.timestamps
    end
  end
end
