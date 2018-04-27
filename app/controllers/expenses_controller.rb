class ExpensesController < ApplicationController

	before_action :sanitize_page_params, only: [:create]

  def index
    @tab = :expenses
    @expenses = Expense.all
  end

  def new
  	@expense = Expense.new
  end

  def create
  	expense_params[:type] = expense_params[:type].to_i
  	binding.pry
  	@expense = Expense.create(expense_params)
  end

  private

  	def expense_params
  		params.require(:expense).permit(:type, :date, :concept, :category, :amount)
  	end

  	def sanitize_page_params
  		binding.pry
  		expense_params[:type] = expense_params[:type]
  	end

end
