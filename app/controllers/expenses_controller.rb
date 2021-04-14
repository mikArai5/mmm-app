class ExpensesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  def index
    @details = Detail.all
    time = Time.now
    this_month = time.month
    this_year = time.year

    @income_total = @details.where(incomes_or_expenses_id: '2').group("concat(year(created_at)),month(created_at)").sum(:price)
    @expense_total = @details.where(incomes_or_expenses_id: '3').group("concat(year(created_at)),month(created_at)").sum(:price)

  end

end
