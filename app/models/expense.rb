# == Schema Information
#
# Table name: expenses
#
#  id           :integer          not null, primary key
#  expense_type :integer
#  date         :datetime
#  concept      :string
#  category     :integer
#  amount       :float
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Expense < ApplicationRecord
	enum expense_type: [:Purchase, :Withdrawal, :Tranfer, :Payment]
	enum category: [:Restaurants, :Grocery, :Car, :Services, :Home, :Education, :Fun, :Travel]

	validates :expense_type, :date, :concept, :category, :amount, presence: true
end
