class CouponsController < ApplicationController

  def index 
    @coupons = Coupon.all
  end
  def edit
  end

  def show
    if params[:id]
      @coupon = Coupon.find(params[:id])
    end
  end

  def new
  end

  def create
   if params[:coupon]
    new_coupon = Coupon.create(coupon_code: params[:coupon][:coupon_code],store: params[:coupon][:store])
    p new_coupon
    redirect_to coupon_path(new_coupon)
   else 
    render "coupons/new"
   end
  end
end
