class ExpensesController < ApplicationController

  before_action :find_expense, :except => [:index, :new, :create]

  def index
    @time_now = Time.now
    @expense_types = Expense.expense_types.keys.to_a
    @categories = Expense.categories.keys.to_a
    @expenses = Expense.month_filter

    if params[:category_].present?
      @expenses = @expenses.where("category = ?", params[:category])
    end

    if params[:expense_type].present?
      @expenses = @expenses.where("expense_type = ?", params[:expense_type])
    end
  end

  def new
  	@expense = Expense.new
  end

  def create
  	@expense = Expense.create(expense_params)
  end

  def edit
  end

  def update
    @expense = Expense.update(params[:id], expense_params)
  end

  private

    def find_expense
      @expense = Expense.find(params[:id])
    end

  	def expense_params
  		params.require(:expense).permit(:expense_type, :date, :concept, :category, :amount)
  	end

end
