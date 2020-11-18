class SpacesController < ApplicationController

  def index
    @spaces = Space.all # all spaces, available or not; TODO: filter 'available' + map
  end

  def show
    @space = Space.find(params[:id]) # TODO: add image/map/etc.
  end

  def new
    @space = Space.new
  end

  def create
    @space = Space.new(space_params)
    @space.user = current_user
    if @space.save
      flash[:notice] = 'space added!'
      redirect_to space_path(@space)
    else
      render :new
    end
  end

  def edit
    # TODO: edit own space including availability schedule
  end

  def update
  end

  def destroy
    @space = Space.find(params[:id])
    @space.destroy
    redirect_to spaces_path
  end

  def my_spaces
    # TODO: show personal spaces in own view; ability to confirm reservation inline
  end

  def space_params
    params.require(:space).permit(:location, :volume, :condition, :access, :price_per_month, :user, :description, :image)
  end
end
