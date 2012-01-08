class AddDescrptionToEntry < ActiveRecord::Migration
  def self.up
    add_column :entries, :amount, :integer
    add_column :entries, :description, :text
  end

  def self.down
    remove_column :entries, :amount, :integer
    remove_column :entries, :description
  end
end
