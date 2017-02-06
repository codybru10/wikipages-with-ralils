class BusinessTypesController < ApplicationController
  def index
    @business_types = BusinessType.all
  end

  def show
    @business_types = BusinessType.find(params[:id])
  end
end
