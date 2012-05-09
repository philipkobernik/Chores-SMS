class AddDescriptionToChores < ActiveRecord::Migration
  def self.up
    add_column :chores, :description, :text
  end

  def self.down
    remove_column :chores, :description
  end
end
