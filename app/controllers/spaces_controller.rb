class SpacesController < ApplicationController

  def index
    @spaces = Space.all # all spaces, available or not
  end

  def show
    @space = Space.find(params[:id])
  end

  def new
    @space = current_user.spaces.build
  end

  def create
    @space = current_user.spaces.build(space_params)

    if @space.save
      redirect_to listing_space_path(@space), notice: "Saved Success"
    else
      flash[:alert] = @space.errors.full_messages
      render :new
    end
  end
  # def create
  #   @space = Space.new(space_params)
  #   if @space.save
  #     flash[:notice] = 'space added!'
  #     redirect_to space_path(@space)
  #   else
  #     render :new
  #   end
  # end

  def edit
  end

  def update
  end

  def destroy
  end
end
