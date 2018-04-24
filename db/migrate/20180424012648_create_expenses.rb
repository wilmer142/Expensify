class CreateExpenses < ActiveRecord::Migration[5.0]
  def change
    create_table :expenses do |t|
      t.int :type
      t.datetime :date
      t.string :concept
      t.int :category
      t.double :amount

      t.timestamps
    end
  end
end
