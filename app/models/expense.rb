# == Schema Information
#
# Table name: expenses
#
#  id         :integer          not null, primary key
#  type       :integer
#  date       :datetime
#  concept    :string
#  category   :integer
#  amount     :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Expense < ApplicationRecord
	enum type: [:Purchase, :Withdrawal, :Tranfer, :Payment]
	enum category: [:Restaurants, :Grocery, :Car, :Services, :Home, :Education, :Fun, :Travel]

	validates :type, :date, :concept, :category, :amount, presence: true
end
