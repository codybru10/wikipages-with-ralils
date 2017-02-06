class BusinessesController < ApplicationController
  def new
    @business_type = BusinessType.find(params[:business_type_id])
    @business = @business_type.businesses.new
  end

  def create
    @business_type = BusinessType.find(params[:business_type_id])
    @business = @business_type.businesses.new(business_params)
    if @business.save
      redirect_to business_type_path(@business.business_type)
    else
      render :new
    end
  end

  def edit
    @business_type = BusinessType.find(params[:business_type_id])
    @business = Business.find(params[:id])
  end

  def update
    @business = Business.find(params[:id])
    if @business.update(business_params)
      redirect_to business_type_path
    else
      render :edit
    end
  end

  def destroy
    @business = Business.find(params[:id])
    @business.destroy
    redirect_to business_type_path
  end



private
  def business_params
    params.require(:business).permit(:name)
  end
end
