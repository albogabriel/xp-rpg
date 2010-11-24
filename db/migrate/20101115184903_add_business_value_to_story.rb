class AddBusinessValueToStory < ActiveRecord::Migration
  def self.up
    add_column :stories, :businessValue, :string, :default => 'M'
  end

  def self.down
    remove_column :stories, :businessValue
  end
end
