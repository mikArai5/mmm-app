class DetailsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_expense, only: [:show, :edit]
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

  def show
  end

  def edit
  end

  def update
    detail = Detail.find(params[:id])
    detail.update(detail_params)
    if detail.save
      redirect_to detail_path
    else
      render :index
    end
  end

  def destroy
    detail = Detail.find(params[:id])
    detail.destroy
    if detail.delete
      redirect_to root_path(@detail)
    else
      render :edit
    end
  end

  

  private
  def detail_params
    params.require(:detail).permit(:item_name, :memo, :incomes_or_expenses_id, :category_id, :day, :price, :payment_methods_id, :number_of_time_id).merge(user_id: current_user.id)
  end

  def set_expense
    @detail = Detail.find(params[:id])
  end


end