class CreateNominations < ActiveRecord::Migration
  def self.up
    create_table :nominations do |t|
      t.belongs_to :award
      t.belongs_to :nominee

      t.timestamps
    end
  end

  def self.down
    drop_table :nominations
  end
end
