class CreateStories < ActiveRecord::Migration
  def self.up
    alter_table :stories do |t|
      t.string :id
      t.string :title
      t.text :description
      t.string :estimate
      t.string :status
      t.references :iteration_id

      t.timestamps
    end
  end

  def self.down
    drop_table :stories
  end
end
