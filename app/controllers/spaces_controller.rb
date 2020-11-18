class SpacesController < ApplicationController
  def index
    @spaces = Space.all # all spaces, available or not
  end

  def show
    @space = Space.find(params[:id])
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
    @space = Space.find(params[:id])
    @space.destroy
    redirect_to spaces_path
  end

  def space_params
    params.require(:space).permit(:location, :volume, :condition, :access, :price_per_month, :user, :description, :image)
  end
end
