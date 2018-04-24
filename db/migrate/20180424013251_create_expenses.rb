class CreateExpenses < ActiveRecord::Migration[5.0]
  def change
    create_table :expenses do |t|
      t.integer :type
      t.datetime :date
      t.string :concept
      t.integer :category
      t.float :amount

      t.timestamps
    end
  end
end
