class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :name
      t.string :phone
      t.integer :chore_id

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end