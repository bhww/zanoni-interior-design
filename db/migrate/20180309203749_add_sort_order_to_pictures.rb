class AddSortOrderToPictures < ActiveRecord::Migration[5.1]
  def change
    add_column :pictures, :sort_order, :integer
  end
end
