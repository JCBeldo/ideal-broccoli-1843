require 'rails_helper'

RSpec.describe 'Plots Index Page' do
let!(:garden_1) { Garden.create!(name: "Neighbourhood Garden", organic: true) }
let!(:plot_1) { garden_1.plots.create!(number: 15, size: "Large", direction: "SouthEast") }
let!(:plot_2) { garden_1.plots.create!(number: 37, size: "Massive", direction: "SouthWest") }
let!(:plant_1) { Plant.create!(name: "Brandywine Tomato", description: "Lotsa flesh and so flavourful", days_to_harvest: 90) }
let!(:plant_2) { Plant.create!(name: "Purple Beauty Sweet Bell Pepper", description: "Prefers rich, well draining soil.", days_to_harvest: 90) }
let!(:plant_plot_1) { PlantPlot.create!(plant_id: plant_1.id, plot_id: plot_1.id )}
let!(:plant_plot_2) { PlantPlot.create!(plant_id: plant_2.id, plot_id: plot_1.id )}
let!(:plant_plot_3) { PlantPlot.create!(plant_id: plant_1.id, plot_id: plot_2.id )}
let!(:plant_plot_4) { PlantPlot.create!(plant_id: plant_2.id, plot_id: plot_2.id )}

describe 'Displays the plots index and attributes' do
    it 'shoudl dispaly the plot number and name of plants' do
      visit plots_path
      
      expect(page).to have_content(plot_1.number)
      expect(page).to have_content(plot_1.plants_name)
      expect(page).to have_content(plot_2.number)
      expect(page).to have_content(plot_2.plants_name)
    end
  end
end