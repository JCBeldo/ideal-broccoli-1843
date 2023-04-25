class Plot < ApplicationRecord
  belongs_to :garden
  has_many :plant_plots
  has_many :plants, through: :plant_plots

  def plants_name
    plants.pluck(:name).to_sentence
  end
end
