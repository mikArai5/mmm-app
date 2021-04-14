class WishlistsController < ApplicationController
  before_action :set_wishlist, only: [:edit, :show,]
  before_action :authenticate_user!, except: [:index, :show]
  
  def index
    @wishlists = Wishlist.all
  end

  def new
    @wishlist = Wishlist.new
    @wishlists = Wishlist.all
  end

  def create
    @wishlist = Wishlist.new(wishlist_params)
    if @wishlist.save
      redirect_to root_path
    else
      render :index
    end
  end

  def show
    
  end

  def edit
  end
  
  def update
    wishlist = Wishlist.find(params[:id])
    wishlist.update(wishlist_params)
    if wishlist.save
      redirect_to wishlist_path
    else
      render :index
    end
  end

  def destroy
    wishlist = Wishlist.find(params[:id])
    wishlist.destroy
    if wishlist.delete
      redirect_to root_path(@wishlist)
    else
      render :edit
    end
  end


  private
  def wishlist_params
    params.require(:wishlist).permit(:name, :price, :image, :memo).merge(user_id: current_user.id)
  end

  def set_wishlist
    @wishlist = Wishlist.find(params[:id])
  end

end
