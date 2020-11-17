class SpacesController < ApplicationController

  def index
    @spaces = Space.all # all spaces, available or not
  end

  def show
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
  end

  def update
  end

  def destroy
  end

  private 

  def space_params
    params.require(:space).permit(:location, :volume, :price_per_month)
  end
end
