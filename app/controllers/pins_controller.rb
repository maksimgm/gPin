class PinsController < ApplicationController  
  def index
    @pins = Pin.all.order(:id)
    render :index
  end

  def new
    @pin = Pin.new
  end

  def create
    @pin = Pin.new(pin_params)
    # redirect_to '/pins'

    if @pin.save
      redirect_to '/', flash: {success: "Nice!"}
    else
      render :new
      # binding.pry
    end

  end

  def show
    @pin = Pin.find (params[:id])
  end

  def edit
    @pin = Pin.find (params[:id])
  end

  def update
    @pin = Pin.find (params[:id])
    
    @pin.update(pin_params)
    if @pin.update(pin_params)
      redirect_to '/', flash: {success: "Nice!"}
    else
      render :edit
    end    
  end

  def destroy
    @pin = Pin.find params[:id]
    @pin.destroy
      redirect_to '/', flash: {alert: "Successfully Deleted!"}
  end

  private
    def pin_params
      # only allows the user to edit these parameters
      params.require(:pin).permit(:title, :url, :comment, :image)
    end
end