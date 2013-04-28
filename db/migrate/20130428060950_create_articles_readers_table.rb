class CreateArticlesReadersTable < ActiveRecord::Migration
  def self.up
    create_table :articles_readers, :id => false do |t|
        t.integer :article_id
        t.integer :curator_id
    end
    add_index :articles_readers, [:article_id, :curator_id]
    add_index :articles_readers, [:curator_id, :article_id]
  end

  def self.down
    drop_table :articles_readers
  end
end
