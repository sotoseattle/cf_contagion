class TransmissionsController < ApplicationController
  before_action :set_transmission, only: [:show, :edit, :update, :destroy]

  def index
    @transmissions = Transmission.history
  end

  def show
  end

  def new
    @transmission = Transmission.new
  end

  def edit
  end

  def create
    @transmission = Transmission.new(transmission_params)
    binding.pry
    if @transmission.save
      redirect_to @transmission, notice: 'Transmission was successfully created.'
    else
      render :new
    end
  end

  def update
    if @transmission.update(transmission_params)
      redirect_to @transmission, notice: 'Transmission was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @transmission.destroy
    redirect_to transmissions_url, notice: 'Transmission was successfully destroyed.'
  end

  private
  def set_transmission
    @transmission = Transmission.find(params[:id])
  end

  def transmission_params
    params.require(:transmission).permit(:patient_id, :infected_id, :location, :date)
  end
end
