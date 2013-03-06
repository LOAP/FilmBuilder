class CreateCrewCategories < ActiveRecord::Migration
  def change
    create_table :crew_categories do |t|
      t.string :title

      t.timestamps
    end
  end
end
