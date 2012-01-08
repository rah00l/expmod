class CreateExpenses < ActiveRecord::Migration
  def self.up
    create_table :expenses do |t|
      t.string :cluster_name
      t.string :shop_name
      t.date :date
      t.integer :total
      t.integer :adjustable_total

      t.timestamps
    end
  end

  def self.down
    drop_table :expenses
  end
end
