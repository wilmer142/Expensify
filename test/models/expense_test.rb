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

require 'test_helper'

class ExpenseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
