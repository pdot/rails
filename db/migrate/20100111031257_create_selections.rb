class CreateSelections < ActiveRecord::Migration
  def self.up
    create_table :selections do |t|
      t.belongs_to :user
      t.belongs_to :league

      t.timestamps
    end
  end

  def self.down
    drop_table :selections
  end
end
