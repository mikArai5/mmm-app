class DetailsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  def index
    @details = Detail.all

  end

  def new
    @detail = Detail.new 
  end

  def create
    @detail = Detail.new(detail_params)
    if @detail.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def detail_params
    params.require(:detail).permit(:item_name, :memo, :incomes_or_expenses_id, :category_id, :day, :price, :payment_methods_id, :number_of_time_id).merge(user_id: current_user.id)
  end

end
