class AddDescription < ActiveRecord::Migration
  def self.up
    add_column :things, :description, :string
  end

  def self.down
    add_column :things, :description, :string
  end
end
