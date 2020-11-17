class SpacesController < ApplicationController

  def index
    @spaces = Space.all # all spaces, available or not
  end

  def show
  end

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

  def edit
  end

  def update
  end

  def destroy
  end
end
