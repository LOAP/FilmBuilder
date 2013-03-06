class AddCrewCategoryIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :crew_category_id, :integer
  end
end
