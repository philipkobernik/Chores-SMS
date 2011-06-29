class CreateChores < ActiveRecord::Migration
  def self.up
    create_table :chores do |t|
      t.string :name
      t.boolean :notifyTwice

      t.timestamps
    end
  end

  def self.down
    drop_table :chores
  end
end
