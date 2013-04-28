class CreateThoughts < ActiveRecord::Migration
  def change
    create_table :thoughts do |t|
      t.integer :reading_id
      
      t.datetime :time

      t.timestamps
    end
  end
end
