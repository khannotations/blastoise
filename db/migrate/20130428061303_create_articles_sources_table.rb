class CreateArticlesSourcesTable < ActiveRecord::Migration
  def self.up
    create_table :articles_sources, :id => false do |t|
        t.integer :article_id
        t.integer :source_id
    end
    add_index :articles_sources, [:article_id, :source_id]
    add_index :articles_sources, [:source_id, :article_id]
  end

  def self.down
    drop_table :articles_sources
  end
end
