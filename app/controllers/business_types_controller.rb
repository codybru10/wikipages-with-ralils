class BusinessTypesController < ApplicationController
  def index
    @business_types = BusinessType.all
  end

  def show
    @business_type = BusinessType.find(params[:id])
  end

  def new
    @business_type = BusinessType.new
  end

  def create
    @business_type = BusinessType.new(business_type_params)
    if @business_type.save
      redirect_to business_types_path
    else
      render :new
    end
  end

  def edit
    @business_type = BusinessType.find(params[:id])
  end

  def update
    @business_type = BusinessType.find(params[:id])
    if @business_type.update(business_type_params)
      redirect_to business_types_path
    else
      render :edit
    end
  end

  def destroy
    @business_type = BusinessType.find(params[:id])
    @business_type.destroy
    redirect_to business_types_path
  end

private

  def business_type_params
    params.require(:business_type).permit(:name)
  end


end
