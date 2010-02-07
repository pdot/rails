class NominationDescriptionColumn < ActiveRecord::Migration
  def self.up
    add_column :nominations, :description, :string
  end

  def self.down
    remove_column :nominations, :description
  end
end
