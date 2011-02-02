class CreatePagesTable < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.string :title, :null => false
      t.text :body
      t.string :location
      t.boolean :use_site_layout, :default => true
      t.boolean :published, :default => false
      t.timestamps
    end
    
    add_index :pages, :title
  end

  def self.down
    drop_table :pages
  end
end