class PinsController < ApplicationController
  def index
    @pins = Pin.all
    render :index
  end

  def new
    @pin = Pin.new
  end

  def create
    @pin = Pin.new(pin_params)
    # redirect_to '/pins'

    if @pin.save
      redirect_to '/pins'    
    else
      render :new      
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
    if @pin.save
      redirect_to '/pins'    
    else
      render :update      
    end    
  end

  def destroy
    @pin = Pin.find params[:id]
    
    @pin.destroy
      redirect_to '/pins'    
    
  end

  private

    def pin_params
      params.require(:pin).permit(:title, :url, :comment, :image)
    end

end
