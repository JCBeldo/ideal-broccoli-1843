class PlantPlotsController < ApplicationController
  def destroy
    plant = PlantPlot.find_by(params[:plant_id])
    plant.destroy
  
    redirect_to plots_path
  end
end