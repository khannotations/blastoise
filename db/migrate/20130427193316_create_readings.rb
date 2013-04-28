class CreateReadings < ActiveRecord::Migration
  def change
    create_table :readings do |t|
      t.integer :article_id
      t.integer :reader_id
      t.datetime :first_read
      
      t.timestamps
    end
  end
end
