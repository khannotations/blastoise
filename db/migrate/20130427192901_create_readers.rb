class CreateReaders < ActiveRecord::Migration
  def change
    create_table :readers do |t|
      t.string first_name
      t.string last_name
      t.string about

      t.boolean curator

      t.string fb_id
      t.string fb_access_token

      t.timestamps
    end
  end
end
