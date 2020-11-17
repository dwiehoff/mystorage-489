class SpacesController < ApplicationController
  def index
    @spaces = Space.all # all spaces, available or not
  end

  def show
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

  def space_params
    params.require(:space).permit(:location, :volume, :condition, :access, :price_per_month, :user, :description, :image)
  end
end
