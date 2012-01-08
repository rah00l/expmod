class CreateExpensePerticulers < ActiveRecord::Migration
  def self.up
    create_table :expense_perticulers do |t|
      t.string :name
      t.boolean :expense_type

      t.timestamps
    end
  end

  def self.down
    drop_table :expense_perticulers
  end
end
