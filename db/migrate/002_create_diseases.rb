class CreateDiseases < ActiveRecord::Migration[4.2]

  def change
    create_table :diseases do |t|
      t.string :name
      t.string :description
      t.string :symptoms
      t.boolean :life_threatening
      t.boolean :vaccine_preventable
      t.string :transmission
      t.string :diagnosis
      t.string :treatment
      t.string :prevention
      t.string :more
  end
end
end
