class CategoriesController < ApplicationController
  before_action :set_category, only:[:show, :edit]

  def index
    @categories = Category.all
  end

  def edit
  end

  def show
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name, :subcategory, :listing)
  end
end
