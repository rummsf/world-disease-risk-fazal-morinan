class CreateCountries < ActiveRecord::Migration

  def change
    create_table countries do |t|
      t.string :name
      t.string :location
      t.integer :area
      t.integer :population
      t.float :median_age
      t.float :life_expectancy_at_birth
      t.float :infant_mortality_rate
  end

end
