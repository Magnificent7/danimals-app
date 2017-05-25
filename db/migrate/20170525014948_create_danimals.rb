class CreateDanimals < ActiveRecord::Migration[5.1]
  def change
    create_table :danimals do |t|
      t.string :name
      t.string :description
      t.string :species
      t.integer :leg_count

      t.timestamps
    end
  end
end
