class CreateDiseases < ActiveRecord::Migration

  def change
    create_table diseases do |t|
      t.string :name
      t.string :description
      t.string :symptoms
      t.boolean :life_threatening
      t.boolean :vaccine_preventable
      t.string :transmission
      t.string :diagnosis
      t.string :treatment
      t.string :prevention
  end

end
