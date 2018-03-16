class AddSortOrderToGallery < ActiveRecord::Migration[5.1]
  def change
    add_column :galleries, :sort_order, :integer
  end
end
