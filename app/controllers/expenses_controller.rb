class ExpensesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  def index
    @details = Detail.all

    time = Time.now
    this_month = time.month
    this_year = time.year

    @income_total = Detail.where(incomes_or_expenses_id: '2').group("Year(created_at)").group("Month(created_at)").sum(:price)
    @expense_total = Detail.where(incomes_or_expenses_id: '3').group("Year(created_at)").group("Month(created_at)").sum(:price)

  end

  private
  def detail_params
    params.require(:detail).permit(:item_name, :memo, :incomes_or_expenses_id, :category_id, :day, :price, :payment_methods_id, :number_of_time_id).merge(user_id: current_user.id)
  end

end