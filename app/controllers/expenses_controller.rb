class ExpensesController < ApplicationController

  def index
    @tab = :expenses
    @expenses = Expense.all
  end

  def new
  	@expense = Expense.new
  end

  def create
  	@expense = Expense.create(expense_params)
  end

  private

  	def expense_params
  		params.require(:expense).permit(:expense_type, :date, :concept, :category, :amount)
  	end

end
