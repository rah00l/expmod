class CreateEntries < ActiveRecord::Migration
  def self.up
    create_table :entries do |t|
      t.integer :expense_perticuler_id
      t.integer :expense_id
      t.timestamps
    end
  end

  def self.down
    drop_table :entries
  end
end
