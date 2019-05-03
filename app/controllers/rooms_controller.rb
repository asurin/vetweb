class RoomsController < ApplicationController

  def room_params
    params.require(:room).permit(:name, :room_type)
  end

  def index
    @rooms = Room.all
  end

  def show
    @room = Room.find(params[:id])
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.valid?
      @room.save
    else
      render "new"
    end
  end

  def edit
    @room = Room.find(params[:id])
  end

  def update
    @room = Room.find(params[:id])
    @room.update_attributes(room_params)
  end

  def destroy
    Room.find(params[:id]).destroy
    flash[:alert] = "Room deleted"
    redirect_to rooms_path
  end
end
