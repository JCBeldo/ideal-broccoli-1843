# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

garden_1 = Garden.create!(name: "Neighbourhood Garden", organic: true) 
plot_1 = garden_1.plots.create!(number: 15, size: "Large", direction: "SouthEast") 
plot_2 = garden_1.plots.create!(number: 37, size: "Massive", direction: "SouthWest") 
plant_1 = Plant.create!(name: "Brandywine Tomato", description: "Lotsa flesh and so flavourful", days_to_harvest: 90) 
plant_2 = Plant.create!(name: "Purple Beauty Sweet Bell Pepper", description: "Prefers rich, well draining soil.", days_to_harvest: 90) 
plant_3 = Plant.create!(name: "Beefsteak Tomato", description: "Lotsa flesh and so flavourful", days_to_harvest: 100) 
plant_4 = Plant.create!(name: "Purple Haze Carrot", description: "Prefers rich, well draining soil.", days_to_harvest: 60) 
plant_plot_1 = PlantPlot.create!(plant_id: plant_1.id, plot_id: plot_1.id )
plant_plot_2 = PlantPlot.create!(plant_id: plant_2.id, plot_id: plot_1.id )
plant_plot_3 = PlantPlot.create!(plant_id: plant_3.id, plot_id: plot_2.id )
plant_plot_4 = PlantPlot.create!(plant_id: plant_4.id, plot_id: plot_2.id )
