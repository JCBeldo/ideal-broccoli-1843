require 'rails_helper'

RSpec.describe 'Garden show Page' do
  let!(:garden_1) { Garden.create!(name: "Neighbourhood Garden", organic: true) }
  let!(:plot_1) { garden_1.plots.create!(number: 15, size: "Large", direction: "SouthEast") }
  let!(:plot_2) { garden_1.plots.create!(number: 37, size: "Massive", direction: "SouthWest") }
  let!(:plant_1) { Plant.create!(name: "Brandywine Tomato", description: "Lotsa flesh and so flavourful", days_to_harvest: 90) }
  let!(:plant_2) { Plant.create!(name: "Purple Beauty Sweet Bell Pepper", description: "Prefers rich, well draining soil.", days_to_harvest: 90) }
  let!(:plant_3) { Plant.create!(name: "Beefsteak Tomato", description: "Lotsa flesh and so flavourful", days_to_harvest: 100) }
  let!(:plant_4) { Plant.create!(name: "Purple Haze Carrot", description: "Prefers rich, well draining soil.", days_to_harvest: 60) }
  let!(:plant_plot_1) { PlantPlot.create!(plant_id: plant_1.id, plot_id: plot_1.id )}
  let!(:plant_plot_2) { PlantPlot.create!(plant_id: plant_2.id, plot_id: plot_1.id )}
  let!(:plant_plot_3) { PlantPlot.create!(plant_id: plant_3.id, plot_id: plot_2.id )}
  let!(:plant_plot_4) { PlantPlot.create!(plant_id: plant_4.id, plot_id: plot_2.id )}

  describe 'displays a list of plants in the gardens plot' do
    it 'should display a list of plots belonging to this garden' do
      visit garden_path(garden_1)

      expect(page).to have_content(plant_1.name)
      expect(page).to have_content(plant_2.name)
      expect(page).to_not have_content(plant_3.name)
      expect(page).to have_content(plant_4.name)
    end
  end
end