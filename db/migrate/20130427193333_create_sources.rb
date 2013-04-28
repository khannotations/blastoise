class CreateSources < ActiveRecord::Migration
  def change
    create_table :sources do |t|
      t.string :name
      t.string :domain
      t.string :url

      t.timestamps
    end
  end
end
