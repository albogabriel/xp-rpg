class CreateRequirements < ActiveRecord::Migration
  def self.up
    create_table :requirements do |t|
      t.references :iteration
      t.references :story
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :requirements
  end
end
