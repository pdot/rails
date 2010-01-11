class CreateNominees < ActiveRecord::Migration
  def self.up
    create_table :nominees do |t|
      t.string :name
      t.text :description
      t.string :movie_name
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end

  def self.down
    drop_table :nominees
  end
end
