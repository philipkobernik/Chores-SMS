class CreateBeeps < ActiveRecord::Migration
  def self.up
    create_table :beeps do |t|
      t.string :phone
      t.text :message

      t.timestamps
    end
  end

  def self.down
    drop_table :beeps
  end
end
