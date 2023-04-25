class PlantPlotsController < ApplicationController
  def destroy
    plant = Plant.find(params[:id])
    plot = Plot.find(params[:id])
    plant_plot = PlantPlot.find_by(plot_id: plot.id, plant_id: plant.id)
    plant_plot.destroy
  
    redirect_to plots_path
  end
end