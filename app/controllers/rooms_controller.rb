class RoomsController < ApplicationController
  def index
    @rooms = Room.all
    @room = Room.new
  end

  def show
    @rooms = Room.all
    @room = Room.new
    @single_room = Room.find(params[:id])
    @message = Message.new
    @messages = @single_room.messages

    render "index"
  end

  def create
    @room = Room.create(name: params["room"]["name"])
  end
end
