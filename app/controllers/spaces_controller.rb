class SpacesController < ApplicationController
  def index
  end

  def show
    @space = Space.find(space_params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
