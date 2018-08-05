class ListingsController < ApplicationController
  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
  end

  private

  def listing_params
    params.require(:listing).permit(:title, :description, :address_city, :state, :address_zip_code, :photo, :price )
  end
end
