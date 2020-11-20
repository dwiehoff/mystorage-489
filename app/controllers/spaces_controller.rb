class SpacesController < ApplicationController
  def index
    @spaces = policy_scope(Space).order(created_at: :desc)
    @markers = @spaces.geocoded.map do |space|
      {
        lat: space.latitude,
        lng: space.longitude
        # image_url: helpers.image_url('unit_icon.png')
      }
    end
  end

  def my_spaces
    @spaces = policy_scope(Space).order(created_at: :desc).where(user: current_user)
    authorize @spaces
    @markers = @spaces.geocoded.map do |space|
      {
        lat: space.latitude,
        lng: space.longitude
      }
    end
  end

  def show
    @space = Space.find(params[:id])
  end

  def new
    @space = Space.new
    authorize @space
  end

  def create
    @space = Space.new(space_params)
    @space.user = current_user
    if @space.save
      flash[:notice] = 'space has been created'
      redirect_to space_path(@space)
    else
      render :new
    end
    authorize @space
  end

  def edit
    @space = Space.find(params[:id])
    authorize @space
  end

  def update
    @space = Space.find(params[:id])
    authorize @space
    @space.update(space_params)
    redirect_to space_path(@space)
  end

  def destroy
    @space = Space.find(params[:id])
    authorize @space
    @space.destroy
    redirect_to spaces_path
  end

  def space_params
    params.require(:space).permit(:location, :volume, :condition, :access, :price_per_month, :user, :description, :image)
  end
end
