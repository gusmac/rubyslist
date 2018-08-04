class SubcategoriesController < ApplicationController
  before_action :set_subcategory, only:[:show, :edit]

  def index
    @subcategories = Subcategory.all
  end

  def edit
  end

  def show
  end

  private

  def set_subcategory
    @subcategory = Subcategory.find(params[:id])
  end

  def subcategory_params
    params.require(:subcategory).permit(:name, :category_id)
  end
end
