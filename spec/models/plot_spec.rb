require 'rails_helper'

RSpec.describe Plot do
  describe 'relationships' do
    it { should belong_to(:garden) }
    it { should have_many(:plant_plots) }
    it { should have_many(:plants).through(:plant_plots) }
  end

  # describe 'instance methods' do
  #   let!(:garden_1) { Garden.create!(name: "Neighbourhood Garden", organic: true) }
  #   let!(:plot_1) { garden_1.plots.create!(number: 15, size: "Large", direction: "SouthEast") }
  #   let!(:plant_1) { Plant.create!(name: "Brandywine Tomato", description: "Lotsa flesh and so flavourful", days_to_harvest: 90) }
  #   let!(:plant_2) { Plant.create!(name: "Purple Beauty Sweet Bell Pepper", description: "Prefers rich, well draining soil.", days_to_harvest: 90) }
  #   let!(:plant_plot_1) { PlantPlot.create!(plant_id: plant_1.id, plot_id: plot_1.id )}
  #   let!(:plant_plot_2) { PlantPlot.create!(plant_id: plant_2.id, plot_id: plot_1.id )}
    
  #   it '#plants_name' do
  #   expect(plot_1.plants_name).to eq("Brandywine Tomato and Purple Beauty Sweet Bell Pepper" )
  #   end
  # end
end
