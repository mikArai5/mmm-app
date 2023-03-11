class ChartsController < ApplicationController
  def index
    @detail = Detail.new
    @details = Detail.all
    @sum_of_expenses = Detail.where(incomes_or_expenses_id: 3).sum(:price)
    @price = Detail.where(incomes_or_expenses_id: 3).group(:category_id).sum(:price)
  end

  def show
    @detail = Detail.find(params[:id])
  end
  
  def update
    @detail = Detail.find(params[:id])
  end

  def destroy
    @detail = Detail.find(params[:id])
  end

  private
  def detail_params
    params.require(:detail).permit(:item_name, :memo, :incomes_or_expenses_id, :category_id, :day, :price, :payment_methods_id, :number_of_time_id).merge(user_id: current_user.id)
  end

end

