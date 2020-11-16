class SpacesController < ApplicationController
  def new
    @offer = Offer.find(params[:offer_id])
    @storage = Storage.new
  end

  def create
    @offer = Offer.find(params[:offer_id])
    @storage = Storage.new(storage_params)
    @storage.offer = @offer
    if @storage.save
      redirect_to offer_path(@offer)
    else
      render :new
    end
  end
end
