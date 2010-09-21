class CreateStories < ActiveRecord::Migration
  def self.up
    create_table :stories do |t|
      t.string :id
      t.string :title
      t.text :description
      t.string :estimate
      t.string :status

      t.timestamps
    end
  end

  def self.down
    drop_table :stories
  end
end
