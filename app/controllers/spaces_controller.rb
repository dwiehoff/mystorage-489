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
  end
end
